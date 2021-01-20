import 'dart:async';
import 'package:flow/Domain/auth/dynamic_links_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

@lazySingleton
class FirebaseDynamicLinkService implements DynamicLinkService{
FirebaseDynamicLinks _firebaseDynamicLinks;
FirebaseAuth _firebaseAuth;
SharedPreferences _sharedPreferences;
FirebaseDynamicLinkService(this._firebaseDynamicLinks,this._firebaseAuth,this._sharedPreferences);
StreamController<Map<String,Object>> streamController=StreamController.broadcast();

  Map<String,Object> simplifyLink(Uri deepLink){
    final currentTime = DateTime.now();
    final path = deepLink.path=='https://flowandroid.page.link/embeddedVerification';
    final linkSentDuration =deepLink.queryParameters['timeStamp'];
    final id=deepLink.queryParameters['id'];
    final stringToDatetime = DateTime.parse(linkSentDuration);
    final bool validTime =currentTime.difference(stringToDatetime).inMinutes<15;
    final bool validIdentity = _sharedPreferences.getString('id')==id;

    return {
      'validIdentity':validIdentity,
      'validTime':validTime,
      'validPath':path
    };

  }



  void initDynamicLinks() async {
    final currentTime = DateTime.now();
    _firebaseDynamicLinks.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLink) async {
          final Uri deepLink = dynamicLink?.link;
          if(deepLink != null){
            Map<String, Object> simpLink =simplifyLink(deepLink);
            print(_sharedPreferences.containsKey('emailAddress'));
            if (_sharedPreferences.containsKey('emailAddress') && (simpLink['validTime']) &&
                simpLink['validIdentity'] && simpLink['validPath']) {
              String emailAddress = _sharedPreferences.get('emailAddress');
              await _sharedPreferences.clear();
              _sharedPreferences.setString('deepLink', deepLink.toString());
              streamController.add({'emailAddress':emailAddress,'isExpiredLink':false});

            }

            else{
              if(_firebaseAuth.currentUser==null){
                streamController.add({'emailAddress':'','isExpiredLink':true});
              }
              else{
                await _sharedPreferences.clear();
              }
            }
          }




        }, onError: (OnLinkErrorException e) async {

    });
    final PendingDynamicLinkData data =
    await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri deepLink = data?.link;
    if(deepLink != null){
      Map<String, Object> simpLink =simplifyLink(deepLink);

      if (_sharedPreferences.containsKey('emailAddress') && (simpLink['validTime']) &&
          simpLink['validIdentity'] && simpLink['validPath']) {
        String emailAddress = _sharedPreferences.get('emailAddress');
        await _sharedPreferences.clear();

        streamController.add({'emailAddress':emailAddress,'isExpiredLink':false});
      }
      else {
        if(_firebaseAuth.currentUser==null){
          streamController.add({'emailAddress':'','isExpiredLink':true});
        }
        else{
          await _sharedPreferences.clear();
        }
      }

    }
  }

  @override
Future<Uri> generateLink()  async{

  final uuid =Uuid().v4().toString();
  _sharedPreferences.setString('id', uuid);
  final timeGenerated= DateTime.now().toString();
  DynamicLinkParameters dynamicLinkParameters = DynamicLinkParameters(
      androidParameters: AndroidParameters(packageName: 'com.example.flow',minimumVersion: 0),
      uriPrefix: 'https://flowandroid.page.link',
      link: Uri.parse(
          'https:https://flowandroid.page.link/embeddedVerification?timeStamp=$timeGenerated&id=$uuid'
      ));
  ShortDynamicLink link = await dynamicLinkParameters.buildShortLink();
  return link.shortUrl;
}

  Stream<Map<String,Object>> authLink() async*{
   yield* streamController.stream;
  }






}

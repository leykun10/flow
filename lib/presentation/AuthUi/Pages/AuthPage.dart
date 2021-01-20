import 'package:auto_route/auto_route.dart';
import 'package:flow/Application/auth/AuthenticationFormBloc/AuthenticationFormBloc.dart';
import 'package:flow/Infrastructure/auth/firebase_auth_facade.dart';
import 'package:flow/injection.dart';
import 'package:flow/presentation/AuthUi/HelperWidgets/background_widget.dart';
import 'package:flow/presentation/router/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/*
* Features to be added: instead of sending an email verification event to an already existing emailAddress,
* Navigate the user to a sign in page.
* */



class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isNew=false;




  Widget AuthStateDisplayButtons(){
    return  Container(
      padding: EdgeInsets.only(left: 48),
      child: Row(children: [
        isNew? Text('already have an account ?',style: GoogleFonts.dosis(fontSize: 20))
       :Text('Don\'t have an account?',style: GoogleFonts.dosis(fontSize: 20),) ,
        FlatButton(
          onPressed: (){
            setState(() {
              context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.initializeEvent());
              isNew=!isNew;
            });
          },
          child:isNew? Text('Sign in',style: GoogleFonts.dosis(color: Colors.green,fontSize: 23),)
          :Text('Sign up',style: GoogleFonts.dosis(color: Colors.green,fontSize: 23)),),
      ],),
    );
  }

  Widget AuthButtons(String text,IconData icon,Function onPressed,Color color,Color background,{Color textColor}) {
    return Container(
      padding: EdgeInsets.only(right: 0),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 3), // changes position of shadow
        )],
          color: background,
          borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.symmetric(horizontal: 55),
      width: MediaQuery.of(context).size.width,
      height: 56,
      child:
      FlatButton(
        child: Row(children: [Icon(icon,size: 33,color: color,),
          SizedBox(width:10,),
          Text(
          text,style: GoogleFonts.spartan(color: textColor,fontSize: 16),
        )],),
          onPressed: onPressed,),);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationFormBloc,AuthenticationFormState>(
      listener: (context,state){
        print('home called');
        print(state.toString());

        if(state.isExpiredLink!=null && !state.isExpiredLink){
          ExtendedNavigator.of(context).popAndPush(Routes.authForm,arguments: AuthFormArguments(args: {'isNew':true,'isVerified':true}));
        }
        else if(state.isExpiredLink !=null && state.isExpiredLink){
          FlushbarHelper.createInformation(message: 'try again',title:'Email link Expired').show(context);
        }

        state.authFailureOrSuccessOption.fold(() => null, (a) => a.fold((failure) {
    FlushbarHelper.createError(message: failure.map(cancelledByUser:(_) => 'canceled by user',
    serverError: (_)=>  'server error',
    emailAlreadyInUse:(_) => 'email already in use',
    invalidEmailAndPasswordCombination:(_) => 'invalid email and password combination')).show(context);
    }, (r) => {ExtendedNavigator.of(context).pushAndRemoveUntil(Routes.homePage, (route) => false)}));},
      child: SafeArea(
        child: Scaffold(

          body:
          Stack(
            children: [
              BackgroundWidget(isNew?FlutterGradients.riskyConcrete(tileMode: TileMode.clamp)
                  :FlutterGradients.snowAgain(tileMode: TileMode.clamp)
              ),
              Column(children: [

                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                      child: Text('Flow',style: GoogleFonts.grenze(fontSize: 45),)),
                ),
                SizedBox(height: 160,),
                Center(child: isNew?Text('Soulful sound',
                  style: GoogleFonts.playfairDisplay(fontSize: 35,fontWeight: FontWeight.w500),)
                    :Text('Welcome Back',style: GoogleFonts.playfairDisplay(fontSize: 35,fontWeight: FontWeight.w500)),)
                ,SizedBox(height: 15,)
                ,AuthButtons(isNew?'Sign up with email': 'Sign in with email',MdiIcons.email,(){
                  ExtendedNavigator.of(context).pushAuthForm(args: {'isNew':isNew,'isVerified':false});
                },Colors.white,Colors.red,textColor: Colors.white),
                SizedBox(height: 20,),
                InkWell(
                    onTap: (){
                      context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.googleSignInEvent());
                    },
                    child: Container(

      padding: EdgeInsets.only(right: 0),
      decoration: BoxDecoration(
        color: Colors.white,
      boxShadow: [BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 1,
      offset: Offset(0, 3), // changes position of shadow
      )],

      borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.symmetric(horizontal: 55),
      width: MediaQuery.of(context).size.width,
      height: 56,
      child:  Row(children: [Image.asset('Assets/Logo/googleLogo.png',width: 50,),
        SizedBox(width:10,),
        Text(
          'Continue with google',style: GoogleFonts.spartan(color: Colors.black87,fontSize: 16),
        )],)
      ,)),
                SizedBox(height: 20,),
                AuthButtons('Continue with facebook',MdiIcons.facebook,(){
                },Colors.white,Color.fromRGBO(59, 89, 152, 1),textColor: Colors.white)
                ,SizedBox(height: 40,),
                AuthStateDisplayButtons(),
              ],),
            ],
          ),),
      ),
    );
  }
}

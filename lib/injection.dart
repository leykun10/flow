import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';
@injectableInit
final GetIt getIt =GetIt.instance;
Future<void> configuration(String env) async{
  await $initGetIt(getIt,environment: env);
}
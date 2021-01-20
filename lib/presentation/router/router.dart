import 'package:auto_route/auto_route_annotations.dart';
import 'package:flow/presentation/AuthUi/Pages/emailVerification.dart';
import 'package:flow/presentation/AuthUi/Pages/homepage.dart';
import 'package:flow/presentation/AuthUi/Pages/local_auth_page.dart';
import 'package:flow/presentation/AuthUi/Pages/splashPage.dart';
import 'package:flow/presentation/AuthUi/Screens/authentication_screen.dart';
@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
routes: <AutoRoute>[
// initial route is named "/"

MaterialRoute(page: SplashPage, initial: true,),
MaterialRoute(page: AuthForm,),
  MaterialRoute(page: AuthScreen, ),
  MaterialRoute(page: HomePage, ),
  MaterialRoute(page: VerificationPage, fullscreenDialog: true)

],)

class $Router{
}
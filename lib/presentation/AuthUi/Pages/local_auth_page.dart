
import 'package:auto_route/auto_route.dart';
import 'package:flow/Application/auth/AuthenticationFormBloc/AuthenticationFormBloc.dart';
import 'package:flow/presentation/AuthUi/HelperWidgets/background_widget.dart';
import 'package:flow/presentation/AuthUi/Pages/sign_in_widget.dart';
import 'package:flow/presentation/AuthUi/Pages/sign_up_widget.dart';
import 'package:flow/presentation/router/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gradients/flutter_gradients.dart';


class AuthForm extends StatefulWidget {
 final args;
 AuthForm(this.args);
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> with WidgetsBindingObserver{

  final _formKey= GlobalKey<FormState>();


  Widget authBuilder(AuthenticationFormState state){
    return ListView(children: [
      SizedBox(height: 40,),
      Form(
        key:_formKey ,
        autovalidate: state.showErrorMessages,
        child: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 35, 0),
        child: widget.args['isNew']? SignUpWidget({'isVerified':widget.args['isVerified']}):
                                    SignInWidget()
    ,))]);
  }

  @override
  Widget build(BuildContext context) {
      return BlocConsumer<AuthenticationFormBloc,AuthenticationFormState>(
        listener: (context,state){
          print('child called');
          state.authFailureOrSuccessOption.fold(() => null, (a) => a.fold((failure) {

            FlushbarHelper.createError(message: failure.map(cancelledByUser:(_) => 'canceled by user',
                serverError: (_)=>  'server error',
                emailAlreadyInUse:(_) => 'email already in use',
                invalidEmailAndPasswordCombination:(_) => 'invalid email and password combination')).show(context);
          }, (success) => {
            if(state.isVerifying){
              ExtendedNavigator.of(context).popAndPush(Routes.verificationPage,)
          }

          }));


        },
        builder:(context,state)=> Scaffold(
          backgroundColor: Colors.white,
            body: authBuilder(state)
          ),
      );

  }
}

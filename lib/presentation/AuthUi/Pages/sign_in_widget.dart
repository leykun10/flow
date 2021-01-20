import 'dart:ui';

import 'package:flow/Application/auth/AuthenticationFormBloc/AuthenticationFormBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:google_fonts/google_fonts.dart';
class SignInWidget extends StatelessWidget {

  Widget authButton(String text,Function onPressed,BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
          gradient: FlutterGradients.snowAgain(),
      ),
      child: context.bloc<AuthenticationFormBloc>().state.isSubmitting?Center(child: CircularProgressIndicator())
          :FlatButton(
          onPressed: onPressed,
          child:
          Text(text,style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.w400))
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.015),
      height: MediaQuery.of(context).size.height,
      child: Column(children: [
        Center(child:Text('Sign in',style: GoogleFonts.grenze(fontSize: 40),)),
        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
        TextFormField(

            style: TextStyle(color: Colors.black54),
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              hintText: 'youremail@example.com',
              hintStyle: TextStyle(color: Colors.black54),
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.black54,fontSize: 17),
              prefixStyle: TextStyle(color: Colors.black54),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
                //  when the TextFormField in unfocused
              ) ,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
                //  when the TextFormField in unfocused
              ) ,
            ),
            onChanged:(value){
              context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.emailChanged(value.trim()));
            },
            validator: (value){
              return context.bloc<AuthenticationFormBloc>().state.emailAddress.value.fold((l) => l.maybeMap
                (orElse:()=> null,invalidEmail: (value){
                  if(value.failedValue.length<1){
                    return 'email address can\'t be empty' ;
                  }
                  return 'Invalid Email';} ),
                      (r) => null);
            },
          ),SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          TextFormField(

              onChanged:(value){
                context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.passwordChanged(value.trim()));
              },
              validator: (value){
                return context.bloc<AuthenticationFormBloc>().state.password.value.fold((l) => l.maybeMap
                  (orElse:()=> null,shortPassword: (value){
                  if(value.failedValue.length<1){
                    return 'password field can\'t be empty' ;
                  }
                  else if(value.failedValue.length<8){
                    return 'short passwords';
                  }
                  else {
                    return null;
                  }
                  } ),
                        (r) => null);
              },
              obscureText: true,
              style: TextStyle(color: Colors.black54),
              decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black54),
    //  when the TextFormField in unfocused
    ),
                 disabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(color: Colors.black54)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  hintText: 'yourpassword',
                  hintStyle: TextStyle(color: Colors.black54),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black54,fontSize: 17),
                  prefixStyle: TextStyle(color: Colors.black54)
              )),
          SizedBox(height: MediaQuery.of(context).size.height*0.04,),


        Align(
            alignment: Alignment.topLeft,
            child: FlatButton(child: Text('Forgot password?',style: TextStyle(fontSize: 15,color: Colors.black54),))),
        SizedBox(height: MediaQuery.of(context).size.height*0.01,),

          authButton('Sign in', (){
            context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.firebaseSignInEvent());
          },context)



        ],
      ),
    );
  }
}

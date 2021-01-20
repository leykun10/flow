

import 'package:flow/Application/auth/AuthenticationFormBloc/AuthenticationFormBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  final Map args;
  SignUpWidget(this.args);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {

  Widget authButton(String text,Function onPressed){
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(gradient: FlutterGradients.snowAgain()),
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
      width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Center(child:Text('Sign up',style: GoogleFonts.grenze(fontSize: 40),)),
            SizedBox(height:MediaQuery.of(context).size.height*0.07,),
        !widget.args['isVerified']?TextFormField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
              //  when the TextFormField in unfocused
            ),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            hintText: 'youremail@example.com',
            hintStyle: TextStyle(color: Colors.black54),
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.black54,fontSize: 20),
            prefixStyle: TextStyle(color: Colors.black54),
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
              return 'invalid email';} ),
                    (r) => null);
          },
        ):
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
            return 'passwords must contain at least one number,one character';} ),
                  (r) => null);
        },
        obscureText: true,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black54),
    //  when the TextFormField in unfocused
    ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black54)),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintText: 'yourpassword',
          hintStyle: TextStyle(color: Colors.black54),
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.black54,fontSize: 20),
          prefixStyle: TextStyle(color: Colors.black54)
        ,
    )),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          !widget.args['isVerified']?authButton('Continue', (){
            context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.sendEmailLinkEvent());
          }):authButton('signUp', (){
            context.bloc<AuthenticationFormBloc>().add(AuthenticationFormEvent.firebaseRegisterEvent());
          })



        ],),

    );
  }
}

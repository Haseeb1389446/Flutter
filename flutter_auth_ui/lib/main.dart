import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/login.dart';
import 'package:flutter_auth_ui/screens/signup.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "",
    routes: {
      "" : (context) => SignupScreen(),
      "login" : (context) => LoginScreen(),
    }
  ));
}
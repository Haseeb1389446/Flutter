import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/firebase_options.dart';
import 'package:flutter_auth_ui/screens/home.dart';
import 'package:flutter_auth_ui/screens/login.dart';
import 'package:flutter_auth_ui/screens/signup.dart';
import 'package:flutter_core_ui/flutter_core_ui.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((res){
    print("Firebase Connected Successfully");
  }).catchError((err){
    print("The Error is $err");
  });

  runApp(MaterialApp(
    initialRoute: "",
    routes: {
      "" : (context) => SignupScreen(),
      "login" : (context) => LoginScreen(),
      "home" : (context) => HomeScreen(),
    }
  ));
}
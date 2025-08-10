import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/firebase_options.dart';
import 'package:flutter_crud/screens/adduser.dart';
import 'package:flutter_crud/screens/getuser.dart';

void main(){

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((res) {
    print("Firebase Connected successfully...");
  }).catchError((err){
    print("The Error is : $err");
  });

  runApp(MaterialApp(
    initialRoute: "",
    routes: {"": (context) => GetUser(), "add": (context) => AddUser()},
  ));
}
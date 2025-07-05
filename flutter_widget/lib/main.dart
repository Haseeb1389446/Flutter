import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("HOME", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 480)),
      ),
      body: Container(
        height: 980,
        width: 2050,
        decoration: BoxDecoration(
          color: Colors.blueGrey
        ),

        child: Icon(Icons.home, size: 80,),
      ),
    ),
  ));
}
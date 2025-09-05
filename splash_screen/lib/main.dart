import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlameSplashScreen(onFinish: (BuildContext context){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen(),));
      }, theme: FlameSplashTheme.white),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash Screen"),),
      body: Center(child: Text("This is home page."),),
    );
  }
}
import 'package:custom_widgets/widgets/bottombar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      bottomNavigationBar: bottombar(count: 0,),
    );
  }
}
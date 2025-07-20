import 'package:custom_widgets/widgets/bottombar.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
      ),
      bottomNavigationBar: bottombar(count: 2,),
    );
  }
}
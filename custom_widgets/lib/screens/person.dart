import 'package:custom_widgets/widgets/bottombar.dart';
import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person Page"),
      ),
      bottomNavigationBar: bottombar(count: 1,),
    );
  }
}
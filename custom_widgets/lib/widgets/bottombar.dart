import 'package:custom_widgets/screens/home.dart';
import 'package:custom_widgets/screens/person.dart';
import 'package:custom_widgets/screens/setting.dart';
import 'package:flutter/material.dart';

class bottombar extends StatelessWidget {
  const bottombar({
    super.key,
    required this.count
  });

  final int count;
  static List<Widget> screens = [HomeScreen(), PersonScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: count,
      onTap: (value) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screens[value]));
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      ]
    );
  }
}
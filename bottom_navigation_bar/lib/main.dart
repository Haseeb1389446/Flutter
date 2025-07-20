import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen()
  ));
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<Widget> screens = [HomeScreen(), ProfileScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(child: Text("This is Home Page")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screens[value]));
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static List<Widget> screens = [HomeScreen(), ProfileScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(child: Text("This is Profile Page")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (value) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screens[value]));
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  static List<Widget> screens = [HomeScreen(), ProfileScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(child: Text("This is Setting Page")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (value) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screens[value]));
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}


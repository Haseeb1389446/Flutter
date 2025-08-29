import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_management/theme_provider.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(), child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Consumer<ThemeProvider>(builder: (context, v, child) => 
    MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: v.isDark? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(),
    )
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme Management"),),
      floatingActionButton: Consumer<ThemeProvider>(builder: (context, val, child) => 
      IconButton(onPressed: (){
        val.changeThemeMode();
      }, icon: Icon(CupertinoIcons.moon))
      ,),
    );
  }
}
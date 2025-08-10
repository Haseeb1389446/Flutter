import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetUser extends StatelessWidget {
  const GetUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All User")),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("UserName"),
          subtitle: Text("UserEmail"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.pencil)),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bin_xmark)),
            ],
          ),
        );
      },),
    );
  }
}
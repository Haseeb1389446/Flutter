import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetUser extends StatelessWidget {
  GetUser({super.key});

  final FirebaseFirestore database = FirebaseFirestore.instance;
  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers() async {
    return await database.collection("Users").get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All User")),
      body: FutureBuilder(
        future: getAllUsers(),
        builder: (context, asyncData) {
          return ListView.builder(
            itemCount: asyncData.data!.size,
            itemBuilder: (context, index) {
          var username = asyncData.data!.docs[index]["userName"];
          var useremail = asyncData.data!.docs[index]["userEmail"];
            return ListTile(
              title: Text("$username"),
              subtitle: Text("$useremail"),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.pencil)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bin_xmark)),
                ],
              ),
            );
          },);
        }
      ),
    );
  }
}
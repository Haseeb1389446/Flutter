import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/edituser.dart';

class GetUser extends StatefulWidget {
  GetUser({super.key});

  @override
  State<GetUser> createState() => _GetUserState();
}

class _GetUserState extends State<GetUser> {
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
          var userId = asyncData.data!.docs[index].id;
            return ListTile(
              title: Text("$username"),
              subtitle: Text("$useremail"),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditUser(uId: userId)));
                    },
                    icon: Icon(CupertinoIcons.pencil)
                    ),
                  IconButton(onPressed: (){
                    setState(() {
                      database.collection("Users").doc(userId).delete().then((res){
                      print("User Deleted Successfully");
                    });
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Deleted Successfully.")));
                  }, icon: Icon(CupertinoIcons.bin_xmark))
                ],
              ),
            );
          },);
        }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed("add");
        },
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
        ),
    );
  }
}
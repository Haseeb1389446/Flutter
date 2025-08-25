import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  EditUser({super.key, required this.uId});

  final String uId;

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  final FirebaseFirestore database = FirebaseFirestore.instance;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  getUserRecord() async {
    return await database.collection("Users").doc(widget.uId).get();
  }

  @override
  void initState() {
    getUserRecord().then((res) => {
      nameController.text = res["userName"],
      emailController.text = res["userEmail"],
      cityController.text = res["userCity"]
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit the User"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "Name field cant be empty";
                    }
                    else if(value.length < 3){
                      return "Name Field Must Have 3 character";
                    }
                    return null;
                  },
                  controller: nameController,
                decoration: InputDecoration(
                  label: Text("Enter User Name"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "Email field cant be empty";
                    }
                    else if(!value.contains('@')){
                      return "Email Field Must Have @ Symbol";
                    }
                    return null;
                  },
                  controller: emailController,
                decoration: InputDecoration(
                  label: Text("Enter User Email"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty) {
                      return "City field cant be empty";
                    }
                    return null;
                  },
                  controller: cityController,
                decoration: InputDecoration(
                  label: Text("Enter User City"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black
                ),
                onPressed: (){
                  if(formkey.currentState!.validate()){
                    database.collection("Users").doc(widget.uId).set({
                      "userName": nameController.text,
                      "userEmail": emailController.text,
                      "userCity": cityController.text,
                   });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User has been updated Succesfully")));
                    Navigator.of(context).pushReplacementNamed("");
                }
                },
                child: Text("Update", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),)),
            ) 
          ],
        ),
      ));
  }
}
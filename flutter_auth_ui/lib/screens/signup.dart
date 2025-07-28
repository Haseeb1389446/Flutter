import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              "SignUp Form",
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                // Name Field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name must not be Empty";
                      } else if (value.length < 3) {
                        return "Name must have 3 characters";
                      }
                      return null;
                    },
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text(
                        "Enter Your Name",
                        style: TextStyle(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                      ),
                    ),
                  ),
                ),

                // Email Field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email must not be empty";
                      } else if (!value.contains("@")) {
                        return "email must have @ symbol";
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text(
                        "Enter Your Email",
                        style: TextStyle(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                      ),
                    ),
                  ),
                ),

                // Password Field
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      } else if (value.length < 8) {
                        return "Password must have 8 characters";
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text(
                        "Enter Your Password",
                        style: TextStyle(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.red),
                      ),

                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("login");
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 30),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        _auth.createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        ).then((res) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User has been Created Successfully")));
                        },);
                      }
                    },
                    child: Text("SignUp"),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),

                // Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Bootstrap.google, size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Bootstrap.github, size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Bootstrap.facebook, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

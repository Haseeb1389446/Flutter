import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  
  final formkey = GlobalKey<FormState>();

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
              "Login Form",
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
                )
            ),
          ),
          Form(
            key: formkey,
            child: Column(
                children: [
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
                        label: Text("Enter Your Email", style: TextStyle(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black)
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red)
                        ),
                      ),
                    ),
                  ),

                  // Password Field
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      obscureText: true,
                      validator: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      } else if (value.length < 8) {
                        return "Password must have 8 characters";
                      }
                      return null;
                    },
                    controller: passwordController,
                      decoration: InputDecoration(
                        label: Text("Enter Your Password", style: TextStyle(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.black)
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red)
                        ),

                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye),)

                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not registered go to "),
                      TextButton(onPressed: (){
                        Navigator.of(context).pushNamed("");
                      }, child: Text("SignUp"))
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 30),
                    width: double.infinity,
                    child: TextButton(onPressed: (){
                      if(formkey.currentState!.validate()) {
                        _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((res) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${emailController.text} has been logged successfully")));
                          Navigator.of(context).pushReplacementNamed("home");
                      }).catchError(
                        (err){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $err")));
                        }
                      );
                      }
                    }, child: Text("Login"), style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white
                    )),
                  ),

                  // Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Bootstrap.google, size: 30)),
                      IconButton(onPressed: (){}, icon: Icon(Bootstrap.github, size: 30)),
                      IconButton(onPressed: (){}, icon: Icon(Bootstrap.facebook, size: 30))
                    ],
                  ),
                ],
              ) 
            
            ),
        ],
      ),
    );
  }
}
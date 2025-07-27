import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  
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
                )
            ),
          ),
          Form(
            child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Enter Your Name", style: TextStyle(color: Colors.black)),
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      obscureText: true,
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
                      Text("Already have an account"),
                      TextButton(onPressed: (){
                        Navigator.of(context).pushNamed("login");
                      }, child: Text("Login"))
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 30),
                    width: double.infinity,
                    child: TextButton(onPressed: (){
                      Navigator.of(context).pushNamed("home");
                    }, child: Text("SignUp"), style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white
                    )),
                  ),

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
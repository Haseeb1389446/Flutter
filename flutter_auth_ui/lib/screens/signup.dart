import 'package:flutter/material.dart';

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
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: TextButton(onPressed: (){}, child: Text("SignUp"), style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white
                    )),
                  ),
                ],
              ) 
            
            ),
        ],
      ),
    );
  }
}
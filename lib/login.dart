import 'package:assignment2/homescreen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String routName = 'login';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Icon(
              Icons.facebook,
              size: 150,
              color: Colors.white,
            )),
          ),
          SizedBox(height: 90),
          Container(
            width: double.infinity,
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Enter Your Email or phone",
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40), // Adjust height to your preference
          Container(
            width: double.infinity,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              // Optional: for password fields
            ),
          ),
          SizedBox(height: 40),

          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomeScreen.routName);
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
      backgroundColor: Color.fromARGB(202, 6, 52, 138),
    );
  }
}

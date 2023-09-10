import 'package:flutter/material.dart';
import 'package:machanic_bhai/forget.dart';
import 'package:machanic_bhai/screen_second.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  TextEditingController email_Controller = TextEditingController();
  TextEditingController password_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            Image.asset("lib/assets/images/logo1.png"),
            SizedBox(
              height: 1.0,
            ),
            Container(
              height: 150,
              width: 150,
              child: Image.asset("lib/assets/images/prsn.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, top: 10),
              child: Text(
                "Login To Your Account",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: email_Controller,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email or Mobile no.',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: password_Controller,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      primary: Color.fromARGB(255, 19, 101, 139),
                      onPrimary: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => forgotScreen()));
                },
                child: Text(
                  "Forgotten your login details? Get help logging in.",
                  style: TextStyle(color: Colors.black, fontSize: 13),
                )),
            SizedBox(
              height: 130,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  "Do Not Have Account ? Signup Now",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}

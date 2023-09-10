import 'package:flutter/material.dart';
import 'package:machanic_bhai/screen_third.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email1_Controller = TextEditingController();
  TextEditingController Mobile_Controller = TextEditingController();
  TextEditingController otp_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
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
              padding: EdgeInsets.only(left: 80, top: 5, right: 40),
              child: Text(
                "Create Account",
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
              controller: email1_Controller,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: Mobile_Controller,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Mobile no.',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 5, right: 40),
              child: Text(
                "Get OTP",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: otp_Controller,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'OTP',
                  prefixIcon: Icon(Icons.check),
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      primary: Color.fromARGB(255, 19, 101, 139),
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => scThird()));
                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

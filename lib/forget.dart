import 'package:flutter/material.dart';
import 'package:machanic_bhai/otp_screen.dart';

class forgotScreen extends StatefulWidget {
  const forgotScreen({super.key});

  @override
  State<forgotScreen> createState() => _forgotScreenState();
}

class _forgotScreenState extends State<forgotScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
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
              padding: EdgeInsets.only(left: 80, top: 10),
              child: Text(
                "Forgot Password",
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
              controller: email,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 160, top: 10),
              child: Text(
                "OR",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: mobile,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Mobile no.',
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => otpScreen()));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:machanic_bhai/reset_screen.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  TextEditingController otp = TextEditingController();
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
              height: 200,
              width: 200,
              child: Image.asset("lib/assets/images/prsn.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: otp,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.check),
                  labelText: 'Enter OTP',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      primary: Color.fromARGB(255, 19, 101, 139),
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => reset()));
                  },
                  child: Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

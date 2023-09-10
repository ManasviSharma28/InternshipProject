import 'package:flutter/material.dart';
import 'package:machanic_bhai/screen_first.dart';

class reset extends StatefulWidget {
  const reset({super.key});

  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  TextEditingController create = TextEditingController();
  TextEditingController confirm = TextEditingController();
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
              padding: EdgeInsets.only(left: 70, top: 10),
              child: Text(
                "Create Password",
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
              controller: create,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.check),
                  labelText: 'Create password',
                  labelStyle: TextStyle(fontSize: 20.0, color: Colors.orange),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: confirm,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Confirm password',
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
                        MaterialPageRoute(builder: (context) => logIn()));
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

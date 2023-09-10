import 'package:flutter/material.dart';
import 'package:machanic_bhai/screen_first.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(231, 68, 137, 255),
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  ListTile(
                    leading:
                        Icon(Icons.person_2_outlined, color: Colors.lightBlue),
                    title: Text("Profile"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.lock_clock_outlined,
                        color: Colors.lightBlue),
                    title: Text("Change password"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.security_outlined, color: Colors.lightBlue),
                    title: Text("Security"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border_outlined,
                        color: Colors.lightBlue),
                    title: Text("Rating"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.share_arrival_time_outlined,
                        color: Colors.lightBlue),
                    title: Text("Share app"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Notification Setting',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            SwitchListTile(
                title: Text("Theme"),
                value: true,
                activeColor: Colors.blue,
                onChanged: (val) {}),
            SwitchListTile(
                title: Text("Sound"),
                value: true,
                activeColor: Colors.blue,
                onChanged: (val) {}),
            SwitchListTile(
                title: Text("Notifications"),
                value: true,
                activeColor: Colors.blue,
                onChanged: (val) {}),
            SwitchListTile(
                title: Text("Other Notifications"),
                value: true,
                activeColor: Colors.blue,
                onChanged: (val) {}),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => logIn()));
                  },
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

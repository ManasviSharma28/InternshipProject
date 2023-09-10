import 'package:flutter/material.dart';

class notify extends StatefulWidget {
  const notify({super.key});

  @override
  State<notify> createState() => _notifyState();
}

class _notifyState extends State<notify> {
  List arrNames = [
    'process',
    'On the way',
    'Placed',
    'process',
    'On the way',
    'Placed',
    'process',
    'On the way',
    'Placed',
    'process',
    'On the way',
    'Placed',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(231, 68, 137, 255),
        title: Text("Notifications"),
      ),
      body: ListView.separated(
        itemBuilder: (current, index) {
          return ListTile(
            title: Text(
              arrNames[index],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            subtitle: Text("Complete your additional details "),
            trailing: Icon(
              Icons.delete,
              color: Colors.lightBlue,
            ),
            onTap: () {},
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 20,
            thickness: 1,
          );
        },
      ),
    );
  }
}

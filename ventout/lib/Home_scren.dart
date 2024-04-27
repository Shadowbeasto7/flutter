import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String Username;
  HomeScreen(this.Username);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vent Out"),
      ),
      body: Column(children: [
        SizedBox(height: 20),
        Text(
          "welcome TO MY PAGE " + Username,
          style: TextStyle(
              color: Colors.blue, fontSize: 64, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}

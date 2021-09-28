import 'package:flutter/material.dart';

class person extends StatefulWidget {
  @override
  _personState createState() => _personState();
}

class _personState extends State<person> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "this is my profile",
          style: TextStyle(fontSize: 50, color: Colors.blue[600]),
        ),
      ),
    );
  }
}

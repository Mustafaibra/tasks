import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "this is settings",
          style: TextStyle(fontSize: 50, color: Colors.blue[600]),
        ),
      ),
    );
  }
}

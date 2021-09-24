import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, password;
  WelcomePage({Key key, this.name, this.password}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Ur Data'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name is : $name',
                style: TextStyle(color: Colors.red[400], fontSize: 20.0),
              ),
              Text(
                'password is: $password',
                style: TextStyle(color: Colors.red[400], fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

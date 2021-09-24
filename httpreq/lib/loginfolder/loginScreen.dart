import 'package:flutter/material.dart';
import 'package:httpreq/loginfolder/DataScreen.dart';

class SecondActivity extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[600],
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Image.network(
                      'https://logowik.com/content/uploads/images/flutter5786.jpg'),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WelcomePage(
                              name: nameController.text,
                              password: passwordController.text,
                            ),
                          ),
                        );
                      },
                    )),
              ],
            )));
  }
}

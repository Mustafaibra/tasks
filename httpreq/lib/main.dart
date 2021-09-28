import 'package:flutter/material.dart';
import 'package:httpreq/loginfolder/loginScreen.dart';

import 'UserScreen.dart';

void main() {
  runApp(MaterialApp(
    home: UserScreen(),
    title: "my new app",
    theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
  ));
}

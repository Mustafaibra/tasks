import 'package:flutter/material.dart';
import 'package:httpreq/screen1.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Navigitor app'),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Image(
                  image: NetworkImage(
                      'https://static8.depositphotos.com/1491329/1060/i/600/depositphotos_10603833-stock-photo-healthy-young-woman-over-blue.jpg'),
                  width: 400.0,
                  height: 400.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  'Enjoy our Healthy App',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'A healthy lifestyle is about more than just proper nutrition and consistent exercise. Getting enough sleep, taking care of your body and mind, and managing things like medications and doctor’s appointments also play important roles in staying healthy.',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondActivity()),
                    );
                  },
                  child: Text('Get Start'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

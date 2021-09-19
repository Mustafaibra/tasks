import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://static8.depositphotos.com/1491329/1060/i/600/depositphotos_10603833-stock-photo-healthy-young-woman-over-blue.jpg'),
            width: 400.0,
            height: 400.0,
          ),
          Text(
            'Enjoy our Healthy App',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
          Text(
            'A healthy lifestyle is about more than just proper nutrition and consistent exercise. Getting enough sleep, taking care of your body and mind, and managing things like medications and doctor’s appointments also play important roles in staying healthy.',
            style: TextStyle(color: Colors.black54, fontSize: 14.0),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
            child: Text('Click here'),
          )
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(Icons.production_quantity_limits),
                  title: const Text(
                    'Logistics Mangement',
                    style: TextStyle(color: Colors.black87),
                  ),
                  subtitle: Text(
                    'Created by Mustafa Ibrahims Class',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: const Text(
                    'Order Mangement ',
                    style: TextStyle(color: Colors.black87),
                  ),
                  subtitle: Text(
                    'created by hamada helal',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    Icon(Icons.account_box),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(children: [
                          Icon(Icons.badge),
                          Text(
                            "Employee Mangemnts",
                            style: TextStyle(color: Colors.black87),
                          ),
                          Text(
                            "the session  ",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ])),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(Icons.person_outline),
                          Text(
                            "Recruitment Mangemnts",
                            style: TextStyle(color: Colors.black87),
                          ),
                          Text(
                            "sell on my cave   ",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

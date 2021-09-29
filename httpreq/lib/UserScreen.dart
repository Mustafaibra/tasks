import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:httpreq/data_model/User.dart';
import 'package:httpreq/settings.dart';
import 'package:httpreq/person.dart';

import 'Users.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex = 0;
  List<Widget> pages = [Users(), settings(), person()];

  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 80),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  "Users Info",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0))),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
          )
        ],
      ),
      body: pages[currentIndex],
    );
  }
}



//list view for users
/*

ListView.builder(
              itemCount: useruslist.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${useruslist[index].name}",
                    ),
                  ),
                  trailing: Icon(Icons.people),
                  enabled: true,
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDetails(),
                            settings: RouteSettings(
                              arguments: useruslist[index],
                            )))
                  },
                );
              },
            ),
*/
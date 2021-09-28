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
      appBar: AppBar(
        title: Text("Users LIST"),
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
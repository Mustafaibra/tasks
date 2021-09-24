import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:httpreq/UserDetails.dart';
import 'package:httpreq/data_model/User.dart';

import 'package:httpreq/services/service.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User> useruslist = [];
  bool isLoading = true;
  getUserList() async {
    useruslist = await service().getUsers();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
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
    );
  }
}

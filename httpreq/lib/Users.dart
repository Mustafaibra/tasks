import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:httpreq/data_model/User.dart';
import 'package:httpreq/services/service.dart';

import 'UserDetails.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
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
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: useruslist.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDetails(),
                            settings: RouteSettings(
                              arguments: useruslist[index],
                            )))
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.people,
                                size: 50,
                              ),
                            ),
                            Text(
                              "${useruslist[index].name}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red[600],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

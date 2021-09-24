import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:httpreq/services/service.dart';
import 'UserScreen.dart';
import 'data_model/User.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.blue[100],
                        elevation: 10.0,
                        child: InkWell(
                          splashColor: Colors.blueGrey[400],
                          child: Center(
                            child: Text(
                              "Name is:${data.name},\n\nUserName is:${data.username},\n\nId is:${data.id},\n\nEmail:${data.email},\n\nPhone:${data.phone},\n\nCity:${data.address.city},\n\nStreet:${data.address.street},\n\nGeo:${data.address.geo},\n\nSuite:${data.address.suite},\n\nCompany name:${data.company.name},\n\nCompany.catchPhrase:${data.company.catchPhrase},\n\nCompany.bs:${data.company.bs}",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}

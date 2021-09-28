import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:httpreq/utilites.dart';
import 'data_model/User.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
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
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: InkWell(
                                onTap: () {
                                  launchURL("http://${data.website}");
                                },
                                child: Text(
                                  "My Web Site: http://${data.website}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: InkWell(
                                onTap: () {
                                  launchURL(
                                      "mailto:${data.email}?subject=sprintsTask&body=Hi Every One,");
                                },
                                child: Text(
                                  "Email:${data.email}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: InkWell(
                                onTap: () {
                                  launchURL("tel:${data.phone}");
                                },
                                child: Text(
                                  "phone :${data.phone}",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(1),
                              child: InkWell(
                                child: Text(
                                  "Name is:${data.name},\n\nUserName is:${data.username},\n\nId is:${data.id},\n\nCity:${data.address.city},\n\nStreet:${data.address.street},\n\nGeo:${data.address.geo},\n\nSuite:${data.address.suite},\n\nCompany name:${data.company.name},\n\nCompany CatchPhrase:${data.company.catchPhrase},\n\nCompany Bs:${data.company.bs}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}

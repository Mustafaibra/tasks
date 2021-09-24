import 'package:dio/dio.dart';

import 'package:httpreq/data_model/User.dart';

class service {
  String baseUrl = "https://jsonplaceholder.typicode.com";
  String userliks = "/users";

  Future<List<User>> getUsers() async {
    List<User> usersList = [];

    Response response = await Dio().get('$baseUrl$userliks');
    var getdata = response.data;
    getdata.forEach((element) {
      User myuser = User.fromJson(element);
      usersList.add(myuser);
    });

    return usersList;
  }
}

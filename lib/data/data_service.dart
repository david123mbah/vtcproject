import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testproject/models/user_model.dart';

class DataService {
  Future<User> getUser(String username, String password) async {
    final queryParameter = {'username': username, "password": password};

    final Uri apiBaseUrl = Uri(
      host: "vvims-api.onrender.com",
      path: "/api/v1/auth/login",
      scheme: "https",
    );
    try {
      var response = await http.post(apiBaseUrl,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"username": username, "password": password}));

      
      final json = jsonDecode(response.body);
      
       return User.fromJson(json);
     
    } catch (e) {
     
      return User(user: {}, email: '', role: "", userName: "", error: "Wrong credential");
    }
  }
}

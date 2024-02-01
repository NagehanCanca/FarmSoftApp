import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as dio;

import '../models/user.dart';
class APIService {
  final String apiBaseUrl = "http://88.225.235.235:8081/api/User";


  APIService();

  Future<User> login(String username, String password) async {
    try {
      var _dio = new dio.Dio();
      //final baseUri = Uri.tryParse(apiBaseUrl);
      //if (baseUri == null) {
       // throw Exception('Invalid apiBaseUrl: $apiBaseUrl');
      //}
      var uri = apiBaseUrl + '?username='+username+'&password='+ password;
      var encoded = Uri.encodeFull(uri);
      //assert(encoded == 'http://example.com/path/to/page?name=ferret%20john');

      var decoded = Uri.dataFromString(encoded);
      //assert(uri == decoded);

      final response = await _dio.get(
          uri
      );

      if (response.statusCode == 200) {
        print("Login");
        User loginUser = response.data.map((json) => User.fromJson(json)).toList();
        print(loginUser.id);
        print(loginUser.username);
        print(loginUser.email);
        return loginUser;
      } else {
        throw Exception('hatalı giriş');
      }
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }

  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('$apiBaseUrl/swagger/v1/swagger.json'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}


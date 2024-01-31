import 'dart:convert';

import '../models/user.dart';
import 'package:http/http.dart' as http;

Future<User> GetUser(asad) async {
  final response = await http
      .get(
      headers: {
      },
      Uri.parse(
          'https://jsonplaceholder.typicode.com/users/' + asad));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load user');
  }
}

import 'dart:convert';
import 'package:hotel_booking/models/albums_model.dart';
import 'package:http/http.dart' as http;


Future<List<Albums>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Albums.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
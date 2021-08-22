import 'dart:convert';
import 'package:data_fetching_from_rest_api_in_flutter/models/newsInfo.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class API_Manager {
  Future<Movie> getMovie() async {
    var client = http.Client();
    var movieModel;

    try {
      var response = await client.get(Uri.parse(
          'https://api.themoviedb.org/3/movie/popular?api_key=ee4de573e2780fed67bea5e96f13d5b8'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        movieModel = Movie.fromJson(jsonMap);
        return movieModel["results"];
      }
    } catch (Exception) {
      return movieModel;
    }

    return movieModel;
  }
}

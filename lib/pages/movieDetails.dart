import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MovieDetails(
  String title,
  String image,
  String overview,
) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        '$title',
      ),
      backgroundColor: Colors.red,
    ),
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w500/' + '$image',
          ),
        ),
      ),
    ),
  );
}

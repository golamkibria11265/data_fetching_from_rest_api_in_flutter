import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MovieCard(
  String image,
  String title,
) {
  return Container(
    child: Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("$image"),
              ),
            ),
          ),
        ],
      ),
    ),
    color: Colors.grey[100],
  );
}

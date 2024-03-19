import 'package:flutter/material.dart';

Widget PopularListView() {
  List<Map<String, dynamic>> items = [
    {
      'imagePath': "assets/images/VectorEllyPopular1.png",
    },
    {
      'imagePath': "assets/images/VectorEllyPopular2.jpeg",
    },
  ];

  return Container(
    height: 148,
    
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.only(right: 15,top: 20),
          child: Card(
            elevation: 0,
            child: Image(
              image: AssetImage(
                item['imagePath'],
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}

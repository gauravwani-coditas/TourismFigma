import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

Widget getPopularListView() {
  final List<Map<String, dynamic>> items = [
    {
      
      'imagePath': "assets/images/VectorEllyPopular1.png",
    },
    {
      
      'imagePath': "assets/images/VectorEllyPopular2.png",
      
    },
  ];

  return Container(
    
   // height: 143,
   // padding: const EdgeInsets.only(right: 20),
    color: const Color.fromARGB(255, 180, 151, 151),
    padding:const  EdgeInsets.only(right: 20),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: items.map((item) {
        return SizedBox(
          height: 100,
          width: 100,
          child: Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 2,
            child: Image.asset(item['imagePath'], fit: BoxFit.cover,),
          ),
        );
      }).toList(),
    ),
  );
}

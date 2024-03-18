import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

Widget getShortForYouListView() {
  final List<Map<String, dynamic>> items = [
    {
      'title': "Top Trending \nIslands in 2022",
      'imagePath': "assets/images/VectorshortForYou1.png",
      'views': "40,999",
    },
    {
      'title': "China Tourism",
      'imagePath': "assets/images/VectorshortForYou2.png",
      'views': "50,999",
    },
  ];

  return Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: items.map((item) {
        return SizedBox(
          height: 88,
          width: 208,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              elevation: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  item['imagePath'],
                                ),
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title'],
                                style: const TextStyle(
                                    fontFamily: "Gellix",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                item['views'],
                                style: const TextStyle(
                                    fontFamily: "Gellix",
                                    fontSize: 12,
                                    color: Color.fromARGB(162, 0, 0, 0)),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );

  }

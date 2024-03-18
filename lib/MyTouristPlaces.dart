import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

Widget getMyTouristPlaces() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(children: [
      SizedBox(
        height: 320,
        width: 270,
        child: Padding(
          padding: const EdgeInsets.only(top: 0, right: 10),
          child: Card(
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Image.asset(
                          'assets/images/VectortouristImage1.png',
                          height: 160,
                          width: 250,
                          //fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Feel the thrill on the only surf simulator in Maldives 2022",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Color.fromARGB(255, 255, 255, 255),

                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/Vectorauthor1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sang Dong-Min',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 3,
                          // ),
                          Text(
                            "Sep 9, 2022",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(162, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 37,
                        width: 37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle,
                          color: const Color.fromARGB(255, 238, 233, 233),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/GroupsendIcon.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 320,
        width: 270,
        child: Padding(
          padding: const EdgeInsets.only(top: 0, right: 10),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Image.asset(
                          'assets/images/vectorTouristPlace2.jpeg',
                          // height: 160,
                          // width: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Feel the thrill on the only surf simulator in Maldives 2022",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Color.fromARGB(255, 255, 255, 255),

                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/Vectorauthor2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sang Dong-Min',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(
                          //   height: 3,
                          // ),
                          Text(
                            "Sep 9, 2022",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(162, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 37,
                        width: 37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle,
                          color: const Color.fromARGB(255, 238, 233, 233),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/GroupsendIcon.png'),
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]),
  );
}

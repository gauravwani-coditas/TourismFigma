import "package:flutter/material.dart";

Widget getHashtags() {
  return const Row(
    children: [
      Text(
        "#Health",
        style: TextStyle(
            color: Color.fromARGB(134, 0, 0, 0), fontFamily: "Gellix"),
      ),
      Spacer(),
      Text(
        "#Music",
        style: TextStyle(
            color: Color.fromARGB(134, 0, 0, 0), fontFamily: "Gellix"),
      ),
      Spacer(),
      Text(
        "#Technology",
        style: TextStyle(
            color: Color.fromARGB(134, 0, 0, 0), fontFamily: "Gellix"),
      ),
      Spacer(),
      Text(
        "#Sports",
        style: TextStyle(
            color: Color.fromARGB(134, 0, 0, 0), fontFamily: "Gellix"),
      ),
    ],
  );
}

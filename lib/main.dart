import "package:figma1/home_screen.dart";
import "package:flutter/material.dart";

void main(){

  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
     )
  );
}
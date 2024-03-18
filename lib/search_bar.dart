import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Expanded( 
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: TextField(
                decoration: InputDecoration(
                  
                  border:InputBorder.none,
                  hintText: 'Search for article...',
                ),
              ),
            ),
          ),
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(90, 98, 235, 1),
              
            ),
            child: Image.asset("assets/images/GroupSearchIcon.png"),
          ),
        ],
      ),
    );
    
  }
}

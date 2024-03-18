import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

Widget getPostsListView() {
  final List<Map<String, dynamic>> items = [
    {
      'title': "Iran's raging protests \nFifth Iranian paramilitary me...",
      'newsType': "Politics",
      'date': "16th May",
      'time': "09 : 32 pm",
      'imagePath': "assets/images/Vectortemple1.png",
    },
    {
      'title': "Putin to host ceremony \nannexing occupied Ukrainia...",
      'newsType': "Politics",
      'date': "16th May",
      'time': "09 : 32 pm",
      'imagePath': "assets/images/Vectortemple2.png",
    },
  ];

  return Container(
    height: 230,
     
    child: ListView(
      children: items.map((item) {
        return Container(
         
          height: 100,
          width: 320,
          padding:const  EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image(
                    image: AssetImage(
                      item['imagePath'],
                    ),
                  ),
                ),
              ),

              //Image.asset("assets/images/Vectortemple1.png",width: 100,height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 14.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "News : ${item['newsType']}",
                      style: const TextStyle(
                          fontFamily: "Gellix",
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "${item['title']}",
                      style: const TextStyle(
                          fontFamily: "Gellix",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    
                    
                    Padding(
                      padding:const  EdgeInsets.only(top:10.4 ),
                      child: Row(
                      
                        children: [
                          Image.asset("assets/images/GroupCalender.png"),
                          const SizedBox(width: 7.68,),
                          Text(
                            "${item['date']}",
                            style: const TextStyle(
                              fontFamily: "Gellix",
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(147, 151, 160, 1),
                            ),
                          ),
                         const SizedBox(width: 45,),
                          Image.asset("assets/images/GroupClock.png"),
                          const SizedBox(width: 7.68,),
                          Text(
                            "${item['time']}",
                            style: const TextStyle(
                              fontFamily: "Gellix",
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(147, 151, 160, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }).toList(),
    ),
  );
}

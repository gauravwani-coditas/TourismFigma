import 'package:figma1/BookMarks.dart';
import 'package:figma1/hashtags.dart';
import 'package:figma1/myTouristPlaces.dart';
import 'package:figma1/profile_screen.dart';
import 'package:figma1/search_bar.dart';
import 'package:figma1/shortForYouListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color myColor = Color.fromARGB(255, 241, 240, 240);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
//
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bookmarks()),
        );
        break;
      case 2:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ProfileScreen()),
        // );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: myColor,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //profile photo and text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/vectorProfilePhoto.png",
                    width: 49,
                    height: 49,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 9, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              fontFamily: "Gellix"),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Monday, 3 October",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: "Gellix"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //2. gap
              const SizedBox(
                height: 20,
              ),

              //3.search Bar
              const MySearchBar(),

              //Sizedbar
              const SizedBox(
                height: 20,
              ),

              //Hashtags
              getHashtags(),

              const SizedBox(
                height: 20,
              ),

              //Cards
              getMyTouristPlaces(),

              //heading

              Row(children: [
                const Text(
                  "Short For You",
                  style: TextStyle(
                      fontFamily: "Gellix",
                      fontWeight: FontWeight.w700,
                      fontSize: 17),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontFamily: "Gellix",
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ))
              ]),

              //Short for you ListView
              const SizedBox(
                height: 9,
              ),
              getShortForYouListView(),

              //popular listview
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/images/navBarIconImages/VectorHomeIcon.png"),
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                  "assets/images/navBarIconImages/GroupBookMarkIcon.png"),
            ),
            label: 'Bookmarks',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                  "assets/images/navBarIconImages/GroupNotificationIcon.png"),
            ),
            label: 'Notifications',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                "assets/images/navBarIconImages/GroupProfileIcon.png")),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
      ),
    );
  }
}

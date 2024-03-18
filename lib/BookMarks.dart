import 'package:figma1/home_screen.dart';
import 'package:figma1/profile_screen.dart';
import 'package:flutter/material.dart';

class Bookmarks extends StatefulWidget {
  Bookmarks({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BookmarksState();
  }
}

class _BookmarksState extends State<Bookmarks> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
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
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/RectangleMaldives.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Row(
              children: [
                SizedBox(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 1.3,
                      ),
                    ),
                    child:
                        Image.asset('assets/images/VectorBookmarkProfile.png'),
                  ),
                ),
                const SizedBox(width: 240),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 1.3,
                      ),
                    ),
                    child: Image.asset('assets/images/icon_in_icon.png'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 2.4,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                border: Border.all(
                  width: 3,
                  // color: Colors.green,
                  style: BorderStyle.none,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 30),
                      child: Column(
                        children: [
                          const Text(
                            'Unravel mysteries of '
                            'the Maldives',
                            style: TextStyle(
                                fontSize: 30,
                                height: 1.2,
                                wordSpacing: 6.0,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 54,
                            width: 325,
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 213, 210, 210),
                                width: 0.8,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/men.png',
                                  width: 26,
                                  height: 26,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Keanu Carpent  May 17',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            textAlign: TextAlign.justify,
                            'Just say anything, George, say whatever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.6,
                              // wordSpacing: 1.4,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
                "assets/images/navBarIconImages/VectorHomeIcon.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                  "assets/images/navBarIconImages/GroupBookMarkIcon.png"),
            ),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                  "assets/images/navBarIconImages/GroupNotificationIcon.png"),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
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

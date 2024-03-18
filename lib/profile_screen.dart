import "package:figma1/home_screen.dart";
import "package:figma1/popularListView.dart";
import "package:figma1/popularPostsListView.dart";
import "package:figma1/posts.dart";
import "package:flutter/material.dart";

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  void onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ),
        // );
        break;
      case 2:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ),
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
    // TODO: implement build

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/VectorprofilePhoto2.png",
                      width: 49,
                      height: 49,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 9, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elly Byers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: "Gellix"),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Author & Writer",
                            style: TextStyle(
                                color: Color.fromARGB(162, 0, 0, 0),
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 109,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color.fromRGBO(84, 116, 253, 1),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 13, left: 22, right: 22, bottom: 10),
                        child: Text(
                          "Following",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    "Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..",
                    style: TextStyle(
                        color: Color.fromRGBO(58, 59, 63, 0.7),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Gellix"),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Container(
                  width: 315,
                  height: 95,
                  padding: const EdgeInsets.only(
                      left: 27, top: 26, right: 27, bottom: 26),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromRGBO(25, 32, 45, 1),
                  ),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            "54.21k",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 1,
                        height: 38,
                        color: const Color.fromRGBO(193, 212, 249, 1),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "21.1k",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 1,
                        height: 38,
                        color: const Color.fromRGBO(193, 212, 249, 1),
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            "36.40k",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Gellix",
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //posts
                const SizedBox(
                  height: 30,
                ),

                //Elly's posts
                Row(
                  children: [
                    const Text(
                      "Elly's Post",
                      style: TextStyle(
                          fontFamily: "Gellix",
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View all",
                          style:
                              TextStyle(color: Color.fromRGBO(84, 116, 253, 1)),
                        ))
                  ],
                ),

                //posts
                getPostsListView(),

                //popular from elly
                const Text(
                  "Popular From Elly",
                  style: TextStyle(
                      fontFamily: "Gellix",
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),

                //popular ListView
                PopularListView(),


              ],
            )),
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

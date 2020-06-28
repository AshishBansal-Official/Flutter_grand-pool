import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grand_pool/screens/home/tabs/chats_page.dart';
import 'package:grand_pool/screens/home/tabs/home_page.dart';
import 'package:grand_pool/screens/home/tabs/posts_page.dart';
import 'package:grand_pool/screens/home/tabs/profile_page.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 2;

  PageController _pageController;

  final List<String> titles = [
    'Favorites',
    'Posts',
    'Home',
    'Chats',
    'Profile'
  ];

  final List<IconData> icons = [
    LineIcons.heart,
    LineIcons.edit,
    LineIcons.home,
    Icons.chat_bubble_outline,
    Icons.person_outline,
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        extendBody: true,
        body: Stack(
          children: <Widget>[
            SafeArea(
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedIndex = page;
                  });
                },
                children: <Widget>[
                  Center(
                    child: Text('Like'),
                  ),
                  PostsScreen(),
                  HomePage(),
                  ChatsPage(),
                  ProfilePage(),
                ],
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 3.0,
              right: 3.0,
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: -10,
                        blurRadius: 60,
                        color: Colors.black.withOpacity(.20),
                        offset: Offset(0, 15))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
                  child: GNav(
                      tabs: titles.map((title) {
                        var index = titles.indexOf(title);
                        return GButton(
                          gap: 3,
                          iconActiveColor: Colors.deepPurple,
                          iconColor: Colors.deepPurple,
                          textColor: Colors.deepPurple,
                          backgroundColor: Colors.deepPurple.withOpacity(.2),
                          iconSize: 24,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          icon: icons[index],
                          text: titles[index],
                        );
                      }).toList(),
                      selectedIndex: selectedIndex,
                      onTabChange: (index) {
                        print(index);
                        setState(() {
                          selectedIndex = index;
                        });
                        _pageController.animateToPage(index,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

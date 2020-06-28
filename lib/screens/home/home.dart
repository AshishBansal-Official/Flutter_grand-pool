import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 1;

  PageController _pageController;

  final List<String> titles = ['Chats', 'Home', 'Blog', 'Profile'];

  final List<IconData> icons = [
    Icons.chat_bubble_outline,
    LineIcons.home,
    LineIcons.edit,
    Icons.person_outline,
  ];

  final List<Color> colors = [
    Colors.lightBlue,
    Colors.teal,
    Colors.purple,
    Colors.pink,
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'GoogleNavBar',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            selectedIndex = page;
          });
        },
        children: <Widget>[
          Center(
            child: Text('Chats'),
          ),
          Center(
            child: Text('Home'),
          ),
          Center(
            child: Text('Blog'),
          ),
          Center(
            child: Text('Profile'),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
            child: GNav(
                tabs: titles.map((title) {
                  var index = titles.indexOf(title);
                  var color = colors[index];
                  return GButton(
                    gap: 10,
                    iconActiveColor: color,
                    iconColor: Colors.black,
                    textColor: color,
                    backgroundColor: color.withOpacity(.2),
                    iconSize: 24,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                    icon: icons[index],
                    // textStyle: t.textStyle,
                    text: titles[index],
                  );
                }).toList(),
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  print(index);
                  setState(() {
                    selectedIndex = index;
                  });
                  _pageController.jumpToPage(index);
                }),
          ),
        ),
      ),
    );
  }
}
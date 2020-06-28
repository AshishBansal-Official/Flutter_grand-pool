import 'package:grand_pool/components/profile_option_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sliver_fab/sliver_fab.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => SliverFab(
        floatingWidget: CircleAvatar(
          minRadius: 50.0,
          maxRadius: 60.0,
          backgroundColor: Color(0xFFFAFAFA),
          child: ClipOval(
            child: Image.asset(
              'images/profile_pic.png',
            ),
          ),
        ),
        floatingPosition: FloatingPosition(
          top: -90.0,
          left: MediaQuery.of(context).size.width / 2 - 60,
        ),
        expandedHeight: 256.0,
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            expandedHeight: 200.0,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/cover.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 16.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1.0,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 15.0,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 22.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'User',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          //TODO: Change the gender icon
                                          LineIcons.mars,
                                          size: 16.0,
                                        ),
                                        SizedBox(
                                          width: 4.0,
                                        ),
                                        Text(
                                          //TODO: Change the age
                                          'Age',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Text(
                                              //TODO: Change the age
                                              'No Bio edit yet...',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey[500],
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            //TODO: Add the Navigation to go to the edit page and make the edit page too
                                          },
                                          child: Icon(
                                            Icons.edit,
                                            color: Colors.grey[700],
                                            size: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FlatButton(
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    color: Color(0xff47d476),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8.0,
                                        horizontal: 30.0,
                                      ),
                                      child: Text(
                                        'Followers',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                  FlatButton(
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    color: Colors.pinkAccent,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8.0,
                                        horizontal: 30.0,
                                      ),
                                      child: Text(
                                        'Following',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'More Options',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      ProfileOptionCard(
                        leading: Icon(
                          Icons.share,
                          color: Colors.blueGrey[400],
                        ),
                        title: 'Share App',
                      ),
                      ProfileOptionCard(
                        leading: Icon(
                          Icons.help,
                          color: Colors.blueGrey[400],
                        ),
                        title: 'Help',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ProfileOptionCard(
                        title: 'ABOUT',
                        titleStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ProfileOptionCard(
                        title: 'SEND FEEDBACK',
                        titleStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
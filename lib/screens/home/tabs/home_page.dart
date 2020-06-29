import 'package:flutter/material.dart';
import 'package:grand_pool/screens/authentication/login.dart';
import 'package:grand_pool/screens/home/tabs/subtabs/apps_tab.dart';
import 'package:grand_pool/screens/home/tabs/subtabs/links_tab.dart';
import 'package:grand_pool/screens/home/tabs/subtabs/youtube_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var height;
  var width;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.deepPurple,
            automaticallyImplyLeading: false,
            title: Text(
              'Grand Pool',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              PopupMenuButton(
                onSelected: (e) => print('PopUpMenuButtonSelected'),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: InkWell(
                      child: Text(
                        'Settings',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: InkWell(
                      onTap: () {
                        print('Tapped');
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Text(
                        'Logout',
                      ),
                    ),
                  ),
                ],
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Apps',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Youtube',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Websites',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            AppsTab(),
                            YoutubeTab(),
                            LinksTab(),
                          ],
                        ),
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

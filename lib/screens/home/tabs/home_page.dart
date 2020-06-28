import 'package:flutter/material.dart';
import 'package:grand_pool/screens/home/tabs/subtabs/apps_tab.dart';

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
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              Icon(
                Icons.more_vert,
                color: Colors.white,
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
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Youtube',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'Other Sources',
                    style: TextStyle(color: Colors.white),
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
                            Container(
                              child: Center(
                                child: Text('Page 2'),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('Page 3'),
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
          ),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grand_pool/screens/home/home_page/folding_cell_maker.dart';

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
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: 'Apps',
            ),
            Tab(
              text: 'Youtube',
            ),
            Tab(
              text: 'Other Sources',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height/6,
                  color: Colors.red,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      FoldingCellMaker(),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
    );
  }
}

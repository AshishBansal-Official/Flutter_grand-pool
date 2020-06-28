import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:grand_pool/components/app_tile.dart';
import 'package:grand_pool/components/custom_tile.dart';

class FoldingCellMaker extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SimpleFoldingCell(
        key: _foldingCellKey,
        padding: EdgeInsets.zero,
        cellSize: Size(MediaQuery.of(context).size.width - 20,
            MediaQuery.of(context).size.height / 6),
        frontWidget: _buildTopWidget(context),
        innerTopWidget: _buildInnerTopWidget(context),
        innerBottomWidget: _buildTopWidget(context),
        animationDuration: Duration(milliseconds: 300),
        borderRadius: 10,
        onOpen: () => print('cell opened'),
        onClose: () => print('cell closed'),
      ),
    );
  }

  Widget _buildTopWidget(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: () => _foldingCellKey?.currentState?.toggleFold(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            height: MediaQuery.of(context).size.height,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Health and Fitness',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Align(
  //   alignment: Alignment.bottomCenter,
  //   child: FlatButton(
  //     child: Text(
  //       "Open",
  //     ),
  //     textColor: Colors.white,
  //     color: Colors.indigoAccent,
  //     splashColor: Colors.white.withOpacity(0.5),
  //   ),
  // ),

  Widget _buildInnerTopWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          AppTile(
            appName: 'Google Fitness',
            appDetail: 'It is a very good app',
            imageUrl: 'images/apps/fitness/google_fit.png',
          ),
          AppTile(
            appName: 'Google Fitness',
            appDetail: 'It is a very good app',
            imageUrl: 'images/apps/fitness/google_fit.png',
          ),
        ],
      ),
    );
  }
}

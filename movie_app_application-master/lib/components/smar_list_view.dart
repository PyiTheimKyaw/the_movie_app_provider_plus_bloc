import 'package:flutter/material.dart';

class SmartHorizonListView extends StatefulWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final EdgeInsets padding;
  final Function onListEndReached;

  SmartHorizonListView({
    required this.itemCount,
    required this.itemBuilder,
    required this.padding,
    required this.onListEndReached,
  });

  @override
  State<SmartHorizonListView> createState() => _SmartHorizonListViewState();
}

class _SmartHorizonListViewState extends State<SmartHorizonListView> {
  var _scollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scollController.addListener(() {
      if (_scollController.position.atEdge) {
        if (_scollController.position.pixels == 0) {
          print("Start of the list Reached");
        } else {
          print("End of the list Reached");
          widget.onListEndReached();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          controller: _scollController,
          padding: widget.padding,
          scrollDirection: Axis.horizontal,
          itemCount: widget.itemCount,
          itemBuilder: widget.itemBuilder);
    //   (widget.itemCount !=0) ?Column(
    //   children: [
    //     Visibility(
    //       visible: false,
    //       child: ListView.builder(
    //           controller: _scollController,
    //           padding: widget.padding,
    //           scrollDirection: Axis.horizontal,
    //           itemCount: widget.itemCount,
    //           itemBuilder: widget.itemBuilder),
    //     ),
    //   ],
    // ): Visibility(
    //     visible: true,
    //     child: Container());
  }
}

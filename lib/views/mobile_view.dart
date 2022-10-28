import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutorify/widgets/navigation_bar.dart';

class MobileView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          //TODO! + COONTIANER 1
          Container(
            child: NavBar(),
          ),
          //TODO! + COONTIANER 2
          Container(
            color: Colors.tealAccent,
            child: SizedBox(
              height: 120,
            ),
          )
        ],
      ),
    );

  }

}
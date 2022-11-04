import 'package:flutter/material.dart';
import 'package:tutorify/widgets/navigation_bar.dart';

class DesktopView extends StatelessWidget{

  final Widget child;
  const DesktopView({required this.child});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
        children: [
          NavBar(),
          Expanded(
            child: child,
          ),
        ],

      ),
    );

  }

}
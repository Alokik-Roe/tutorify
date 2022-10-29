import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutorify/pages/footer.dart';

class TutorProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    //Get dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width/1440;

    // TODO: implement build
    return Scaffold(
        body:Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(110*screenWidth, 57, 110*screenWidth, 125.74),
                      child: Column(
                        children: [
                          //TODO: IMPLEMEMT BASIC UI
                        ],
                      )
                  ),


                  Container(
                    height: 651,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            )
        )





    );
  }

}
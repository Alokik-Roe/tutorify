import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Footer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width/1440;

    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: Container(

        alignment: Alignment.bottomCenter,
        height: 580*screenWidth,
        width: double.maxFinite,
        color: HexColor("#F2BF62"),
      ),
    );

  }

}
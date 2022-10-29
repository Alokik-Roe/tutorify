import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final routeName;
  final bool selected;
  // final Function onHighlight;

  const NavigationItem({
    required this.title,
    required this.routeName,
    required this.selected,
    // required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width / 1440;

    return GestureDetector(
        onTap: () {
          // navKey.currentState!.pushNamed(routeName);
          Get.to(routeName);
          // onHighlight(routeName);
        },
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 16 * screenWidth,
            color: HexColor("#393939"),
          ),
        ));
  }
}

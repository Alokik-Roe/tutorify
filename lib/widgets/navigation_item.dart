import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class NavigationItem extends StatefulWidget {
  final String title;
  final routeName;
  final int index;

  const NavigationItem(
      {super.key,
      required this.title,
      required this.routeName,
      required this.index});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NavigationItemState(
        title: title, routeName: routeName, index: index);
  }
}

class NavigationItemState extends State<NavigationItem> {
  final String title;
  final routeName;
  final int index;

  bool titleColor = false;

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  final List _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  NavigationItemState({
    required this.title,
    required this.routeName,
    required this.index,
    // required this.onHighlight,
  });

  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width / 1440;
    if (_isSelected[index]) {
      titleColor = _isSelected[index];
    } else {
      titleColor = _isHovering[index];
    }
    Color color = HexColor("#393939");
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? _isHovering[index] = true : _isHovering[index] = false;
        });
      },
      onTap: () {
        Get.to(routeName);
      },
      onHighlightChanged: (value) {
        setState(() {});
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: _isHovering[index]
                  ? HexColor("#FB9C46")
                  : HexColor("#393939"),
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 16 * screenWidth,
            ),
          ),
          SizedBox(height: 5 * screenWidth),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isHovering[index],
            child: Container(
              height: 2 * screenWidth,
              width: 20 * screenWidth,
              color: HexColor("#FB9C46"),
            ),
          )
        ],
      ),
    );
    /*GestureDetector(
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
        ))*/
  }
}

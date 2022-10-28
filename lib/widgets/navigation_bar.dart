import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutorify/pages/desktop/home_page.dart';
import 'package:tutorify/pages/desktop/tutor_list_page.dart';
import 'package:tutorify/widgets/navigation_item.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build//Get dimensions
    final screenWidth = MediaQuery.of(context).size.width/1440;
    return Positioned(
      top: 0,
      child: Padding(
        padding: EdgeInsets.fromLTRB(110*screenWidth, 57, 110*screenWidth, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  "Tutorify",
                  style: TextStyle(
                    fontSize: 18*screenWidth,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#393939"),
                  ),

                ),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      NavigationItem(title: "Home", routeName: HomePage(), selected: true),
                      SizedBox(width: 57*screenWidth,),
                      NavigationItem(title: "Lessons", routeName: '', selected: false),
                      SizedBox(width: 50*screenWidth,),
                      NavigationItem(title: "Find Tutors", routeName: TutorListPage(), selected: true),
                      SizedBox(width: 50*screenWidth,),
                      NavigationItem(title: "About Us", routeName: "", selected: false),
                      SizedBox(width: 50*screenWidth,),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: FIX THE ROUTE
                          // Navigator.pushNamed(context, '/register_phone');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: HexColor("407F55"),
                          padding: EdgeInsets.symmetric(horizontal: 20*screenWidth, vertical:  16*screenWidth),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16*screenWidth,
                            color: Colors.white,

                          ),
                        ),
                      ),
                      SizedBox(width: 50*screenWidth,),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: FIX THE ROUTE
                          // Navigator.pushNamed(context, '/register_phone');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: HexColor("FB9C46"),
                          padding: EdgeInsets.symmetric(horizontal: 20*screenWidth, vertical:  16*screenWidth),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16*screenWidth,
                            color: Colors.white,

                          ),
                        ),
                      ),




                    ]
                ),

              ],
            ),
            Divider(
              thickness: 1,
              color: HexColor("#C4C4C4"),
              height: 60,
            )
          ],
        )
      )
    );
  }
}

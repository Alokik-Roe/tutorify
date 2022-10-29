import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutorify/pages/footer.dart';
import 'package:tutorify/pages/tutor_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    if (screenWidth > 715) {
      return Desktop();
    } else {
      return Mobile();
    }

    // TODO: implement build
    return null!;
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width / 1440;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //TODO: IMPLEMEMT BASIC UI
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(right: 90 * screenWidth),
                              child: Image.asset(
                                "assets/homeImg_1.jpg",
                                fit: BoxFit.fill,
                                width: screenWidth * 686,
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(
                                  left: 110 * screenWidth,
                                  top: 90 * screenWidth),
                              // width: screenWidth*656,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "We are The Best",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16 * screenWidth,
                                            color: HexColor("#FB9C46")
                                          // line-height: 24px;
                                        ),
                                      ),
                                      Container(
                                        width: 136 * screenWidth,
                                        padding: EdgeInsets.only(
                                            left: 24 * screenWidth),
                                        child: Divider(
                                          thickness: 2,
                                          color: HexColor("#FB9C46"),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30 * screenWidth,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      /* Learn Frome Home With The Best Online Languange Tutors */
                                      children: [
                                        Text(
                                          "Learn From Home",
                                          style: TextStyle(
                                            letterSpacing: 3 * screenWidth,
                                            fontFamily: 'Poppins',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 50 * screenWidth,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30 * screenWidth,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "With ",
                                              style: TextStyle(
                                                letterSpacing: 3 * screenWidth,
                                                fontFamily: 'Poppins',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 50 * screenWidth,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Text(
                                              "The Best",
                                              style: TextStyle(
                                                letterSpacing: 3 * screenWidth,
                                                fontFamily: 'Poppins',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 50 * screenWidth,
                                                color: HexColor("#FB9C46"),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30 * screenWidth,
                                        ),
                                        Text(
                                          "Online Languange Tutors",
                                          style: TextStyle(
                                            letterSpacing: 3 * screenWidth,
                                            fontFamily: 'Poppins',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 50 * screenWidth,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30 * screenWidth,
                                  ),
                                  SizedBox(
                                    width: 500 * screenWidth,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id interdum dui mollis . Suspendisse nulla :",
                                      softWrap: true,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18 * screenWidth,
                                        color: HexColor("#6C6C6C"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * screenWidth,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // TODO: FIX THE ROUTE
                                      Navigator.pushNamed(
                                          context, '/register_phone');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      // backgroundColor: HexColor("#253428"),
                                      primary: HexColor("#058E6E"),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 60 * screenWidth,
                                          vertical: 20),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(8.0)),
                                    ),
                                    child: Text(
                                      "Try Free Lesson",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18 * screenWidth,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                        Container(
                          padding: EdgeInsets.only(
                              left: 110 * screenWidth,
                              top: 90 * screenWidth,
                              right: 200 * screenWidth),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "What do you want to learn ?",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16 * screenWidth,
                                        color: HexColor("#FB9C46")
                                      // line-height: 24px;
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * screenWidth,
                                  ),
                                  Text(
                                    "What We Offer",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 48 * screenWidth,
                                        color: HexColor("#393939")
                                      // line-height: 24px;
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20 * screenWidth,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "I want to learn",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16 * screenWidth,
                                            color: HexColor("#FB9C46")
                                          // line-height: 24px;
                                        ),
                                      ),
                                      Container(
                                        width: 136 * screenWidth,
                                        padding: EdgeInsets.only(
                                            left: 24 * screenWidth),
                                        child: Divider(
                                          thickness: 2,
                                          color: HexColor("#FB9C46"),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 120 * screenWidth,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 666 * screenWidth,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna nec faucibus ridiculus placerat ipsum. Volutpat eget ut vitae amet ullamcorper et, ante venenatis.",
                                      softWrap: true,
                                      style: TextStyle(
                                        height: 2,
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14 * screenWidth,
                                        color: HexColor("#6C6C6C"),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // padding: EdgeInsets.only(right: 90*screenWidth),
                                        child: Image.asset(
                                            "assets/homeImg_2.png",
                                            width: 550 * screenWidth,
                                            height: 90 * screenWidth,
                                            fit: BoxFit.fitWidth),
                                      ),
                                      SizedBox(
                                        width: 30 * screenWidth,
                                      ),
                                      Text(
                                        "View all",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18 * screenWidth,
                                          color: HexColor("#FB9C46"),
                                          height: 2.2 * screenWidth,
                                          // line-height: 24px;
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(
                              left: 110 * screenWidth,
                              top: 60 * screenWidth,
                              right: 110 * screenWidth),
                          child: Row(
                            children: [
                              Container(
                                width: (screenWidth * 1440) * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Purchase your awesome",
                                      style: TextStyle(
                                        letterSpacing: 2.0 * screenWidth,
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 36 * screenWidth,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20 * screenWidth,
                                    ),
                                    Text(
                                      "lessons and find your tutors",
                                      style: TextStyle(
                                        letterSpacing: 2.0 * screenWidth,
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 36 * screenWidth,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30 * screenWidth,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem habitant a tincidunt cras accumsan integer suscipit. Libero accumsan eget aliquet.",
                                      softWrap: true,
                                      style: TextStyle(
                                        letterSpacing: 2.0 * screenWidth,
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18 * screenWidth,
                                        color: HexColor("#6C6C6C"),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40 * screenWidth,
                                    ),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            // TODO: FIX THE ROUTE
                                            Get.to('');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            // backgroundColor: HexColor("#253428"),
                                            primary: HexColor("#FB9C46"),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 60 * screenWidth,
                                                vertical: 30),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(8.0)),
                                          ),
                                          child: Text(
                                            "Book Your Lesson",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontStyle: FontStyle.normal,
                                              fontSize: 18 * screenWidth,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20 * screenWidth,
                                        ),
                                        OutlinedButton(
                                          onPressed: () {
                                            // TODO: FIX THE ROUTE
                                            Get.to(TutorListPage());
                                          },
                                          style: OutlinedButton.styleFrom(
                                            // backgroundColor: HexColor("#253428"),
                                            primary: HexColor("#FB9C46"),
                                            side: BorderSide(
                                                width: 4 * screenWidth,
                                                color: HexColor("#FB9C46")),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 60 * screenWidth,
                                                vertical: 30),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(8.0)),
                                          ),
                                          child: Text(
                                            "Find Your Tutors",
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontStyle: FontStyle.normal,
                                              fontSize: 18 * screenWidth,
                                              color: HexColor("#FB9C46"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40 * screenWidth,
                              ),
                              Container(
                                // width: double.maxFinite,
                                alignment: Alignment.topRight,
                                // padding: EdgeInsets.only(right: 90*screenWidth),
                                child: Image.asset(
                                  "assets/homeImg_3.jpg",
                                  fit: BoxFit.fill,
                                  width: screenWidth * 600,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              right: 110 * screenWidth,
                              left: 110 * screenWidth,
                              top: 80 - screenWidth),
                          child: Image.asset(
                            "assets/homeImg_4.jpg",
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              right: 110 * screenWidth,
                              left: 110 * screenWidth,
                              top: 80 - screenWidth),
                          child: Image.asset(
                            "assets/homeImg_5.jpg",
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              right: 110 * screenWidth,
                              left: 110 * screenWidth,
                              top: 80 - screenWidth),
                          child: Image.asset(
                            "assets/homeImg_6.jpg",
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              right: 110 * screenWidth,
                              left: 110 * screenWidth,
                              top: 80 - screenWidth,
                              bottom: 80 * screenWidth),
                          child: Image.asset(
                            "assets/homeImg_7.jpg",
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Footer(),
                ],
              ),
            )));
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width / 375;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(
                      left: 29 * screenWidth, top: 29 * screenWidth),
                  // width: screenWidth*656,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "We are The Best",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 16 * screenWidth,
                                color: HexColor("#FB9C46")
                              // line-height: 24px;
                            ),
                          ),
                          Container(
                            width: 136 * screenWidth,
                            padding: EdgeInsets.only(left: 24 * screenWidth),
                            child: Divider(
                              thickness: 2,
                              color: HexColor("#FB9C46"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          /* Learn Frome Home With The Best Online Languange Tutors */
                          children: [
                            Text(
                              "Learn From",
                              style: TextStyle(
                                letterSpacing: 3 * screenWidth,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w900,
                                fontSize: 32 * screenWidth,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 20 * screenWidth,
                            ),
                            Text(
                              "Home With",
                              style: TextStyle(
                                letterSpacing: 3 * screenWidth,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w900,
                                fontSize: 32 * screenWidth,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 20 * screenWidth,
                            ),
                            Row(
                              children: [
                                Text(
                                  "The Best",
                                  style: TextStyle(
                                    letterSpacing: 3 * screenWidth,
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32 * screenWidth,
                                    color: HexColor("#FB9C46"),
                                  ),
                                ),
                                Text(
                                  " Online",
                                  style: TextStyle(
                                    letterSpacing: 3 * screenWidth,
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32 * screenWidth,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20 * screenWidth,
                            ),
                            Text(
                              "Languange Tutors",
                              style: TextStyle(
                                letterSpacing: 3 * screenWidth,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w900,
                                fontSize: 32 * screenWidth,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      SizedBox(
                        width: 300 * screenWidth,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id interdum dui mollis . Suspendisse nulla :",
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w200,
                            fontSize: 14 * screenWidth,
                            color: HexColor("#90A3B4"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: FIX THE ROUTE
                        },
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: HexColor("#253428"),
                          primary: HexColor("#058E6E"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 60 * screenWidth,
                              vertical: 20 * screenWidth),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        child: Text(
                          "Try Free Lesson",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 18 * screenWidth,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20 * screenWidth,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                      right: 29 * screenWidth, left: 29 * screenWidth),
                  child: Image.asset(
                    "assets/homeImg_1.jpg",
                    fit: BoxFit.fitWidth,
                    width: screenWidth * 325,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 29 * screenWidth,
                      top: 60 * screenWidth,
                      right: 29 * screenWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What do you want to learn ?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16 * screenWidth,
                            color: HexColor("#FB9C46")
                          // line-height: 24px;
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Text(
                        "What We Offer",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                            fontSize: 35 * screenWidth,
                            color: HexColor("#393939")
                          // line-height: 24px;
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Row(
                        children: [
                          Text(
                            "I want to learn",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 16 * screenWidth,
                                color: HexColor("#FB9C46")
                              // line-height: 24px;
                            ),
                          ),
                          Container(
                            width: 136 * screenWidth,
                            padding: EdgeInsets.only(left: 24 * screenWidth),
                            child: Divider(
                              thickness: 2,
                              color: HexColor("#FB9C46"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      SizedBox(
                        width: 300 * screenWidth,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec urna nec faucibus ridiculus placerat ipsum. Volutpat eget ut vitae amet ullamcorper et, ante venenatis.",
                          softWrap: true,
                          style: TextStyle(
                            height: 2,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 12 * screenWidth,
                            color: HexColor("#90A3B4"),
                          ),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.only(right: 90*screenWidth),
                        padding: EdgeInsets.only(top: 20 * screenWidth),
                        alignment: Alignment.centerLeft,
                        child: Image.asset("assets/homeMobImg1.jpg",
                            width: 550 * screenWidth, fit: BoxFit.fitWidth),
                      ),
                      SizedBox(
                        height: 60 * screenWidth,
                      ),
                      Text(
                        "Purchase your",
                        style: TextStyle(
                          letterSpacing: 2.0 * screenWidth,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 30 * screenWidth,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Text(
                        "awesome Lessons",
                        style: TextStyle(
                          letterSpacing: 2.0 * screenWidth,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 30 * screenWidth,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Text(
                        "and find your tutors",
                        style: TextStyle(
                          letterSpacing: 2.0 * screenWidth,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 30 * screenWidth,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30 * screenWidth,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem habitant a tincidunt cras accumsan integer suscipit. Libero accumsan eget aliquet.",
                        softWrap: true,
                        style: TextStyle(
                          letterSpacing: 2.0 * screenWidth,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 12 * screenWidth,
                          color: HexColor("#90A3B4"),
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // TODO: FIX THE ROUTE
                              Get.to('');
                            },
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: HexColor("#253428"),
                              primary: HexColor("#FB9C46"),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20 * screenWidth,
                                  vertical: 20 * screenWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                            ),
                            child: Text(
                              "Book Your Lesson",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: 14 * screenWidth,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20 * screenWidth,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // TODO: FIX THE ROUTE
                              Get.to(TutorListPage());
                            },
                            style: OutlinedButton.styleFrom(
                              // backgroundColor: HexColor("#253428"),
                              primary: HexColor("#FB9C46"),
                              side: BorderSide(
                                  width: 2 * screenWidth,
                                  color: HexColor("#FB9C46")),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20 * screenWidth,
                                  vertical: 20 * screenWidth),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                            ),
                            child: Text(
                              "Find Your Tutors",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: 14 * screenWidth,
                                color: HexColor("#FB9C46"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60 * screenWidth,
                      ),
                      Container(
                        // width: double.maxFinite,
                        alignment: Alignment.center,
                        // padding: EdgeInsets.only(right: 90*screenWidth),
                        child: Image.asset(
                          "assets/homeImg_3.jpg",
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                        ),
                      ),
                      SizedBox(
                        height: 60 * screenWidth,
                      ),
                      Container(
                        // width: double.maxFinite,
                        alignment: Alignment.center,
                        // padding: EdgeInsets.only(right: 90*screenWidth),
                        child: Image.asset(
                          "assets/homeMobImg2.jpg",
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                        ),
                      ),
                      SizedBox(
                        height: 60 * screenWidth,
                      ),
                      Container(
                        // width: double.maxFinite,
                        alignment: Alignment.center,
                        // padding: EdgeInsets.only(right: 90*screenWidth),
                        child: Image.asset(
                          "assets/homeMobImg3.jpg",
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                        ),
                      ),
                      SizedBox(
                        height: 60 * screenWidth,
                      ),
                      Container(
                        // width: double.maxFinite,
                        alignment: Alignment.center,
                        // padding: EdgeInsets.only(right: 90*screenWidth),
                        child: Image.asset(
                          "assets/homeMobImg4.jpg",
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                        ),
                      ),
                      SizedBox(
                        height: 60 * screenWidth,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

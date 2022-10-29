import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:textfield_search/textfield_search.dart';
import 'package:tutorify/pages/footer.dart';
import 'package:tutorify/pages/tutor_profile_page.dart';

class TutorListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TutorListState();
  }
}

const List<String> dummyList = [
  'high to low price',
  'low to high price',
  'Rating',
  'Popularity',
  'No. of lessons'
];

class TutorListState extends State<TutorListPage> {
  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 715) {
      return TutorListDesktop();
    } else {
      return TutorListMobile();
    }

    return null!;
  }
}

class TutorListDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenWidth = MediaQuery.of(context).size.width / 1440;

    const NameList = [
      "Ty Ayelloribbin",
      "Hugo First",
      "Percy Vere",
      "Jack Aranda",
      "Olive Tree",
      "Fran G. Pani",
      "John Quil",
      "Ev R. Lasting",
      "Anne Thurium",
      "Cherry Blossom",
      "Glad I. Oli",
      "Ginger Plant",
      "Del Phineum",
      "Rose Bush",
      "Perry Scope",
      "Frank N. Stein",
      "Roy L. Commishun",
      "Pat Thettick",
      "Percy Kewshun",
      "Rod Knee",
      "Hank R. Cheef",
      "Bridget Theriveaquai",
      "Pat N. Toffis",
      "Karen Onnabit",
      "Col Fays",
      "Fay Daway",
      "Joe V. Awl",
      "Wes Yabinlatelee",
    ];

    TextEditingController myController = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50 * screenWidth,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 110 * screenWidth),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            color: Colors.white,
                            elevation: 18 * screenWidth,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0 * screenWidth)),
                            child: Container(
                              width: 800 * screenWidth,
                              height: 60 * screenWidth,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10 * screenWidth,
                                  horizontal: 30 * screenWidth),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: HexColor("CCCCCC"),
                                    size: 20 * screenWidth,
                                  ),
                                  SizedBox(
                                      width: 500 * screenWidth,
                                      height: 40 * screenWidth,
                                      child: TextFieldSearch(
                                          initialList: NameList,
                                          label: "Search Tutor",
                                          controller: myController)),
                                  ElevatedButton(
                                    onPressed: () {
                                      // TODO: Search
                                    },
                                    style: ElevatedButton.styleFrom(
                                      // backgroundColor: HexColor("#253428"),
                                      primary: HexColor("058E6E"),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50 * screenWidth,
                                          vertical: 18 * screenWidth),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.search,
                                          color: Colors.white,
                                          size: 20 * screenWidth,
                                        ),
                                        Text(
                                          "Search",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14 * screenWidth,
                                            color: Colors.white,
                                            height: 1 * screenWidth,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Card(
                          color: Colors.white,
                          elevation: 18 * screenWidth,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(8.0 * screenWidth)),
                          child: Container(
                            width: 357 * screenWidth,
                            height: 60 * screenWidth,
                            padding: EdgeInsets.symmetric(
                                vertical: 10 * screenWidth,
                                horizontal: 10 * screenWidth),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  color: HexColor("CCCCCC"),
                                  size: 20 * screenWidth,
                                ),
                                Container(
                                  width: 300 * screenWidth,
                                  alignment: Alignment.centerRight,
                                  child: DropDown(),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * screenWidth,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 90 * screenWidth),
                    child: Image.asset(
                      "assets/buttons.jpg",
                      fit: BoxFit.fitWidth,
                      width: 1230 * screenWidth,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                        left: 270 * screenWidth,
                        right: 270 * screenWidth,
                        top: 50 * screenWidth),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(
                                Name: "Broklynn Simons",
                                ImgPath: "assets/profile1.jpg"),
                            Card2(imgPath: "assets/profile1.jpg"),
                          ],
                        ),
                        SizedBox(
                          height: 50 * screenWidth,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(
                                Name: "Theresa Webb",
                                ImgPath: "assets/profile2.jpg"),
                            Card2(imgPath: "assets/profile2.jpg"),
                          ],
                        ),
                        SizedBox(
                          height: 50 * screenWidth,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(
                                Name: "Nicolas Kate",
                                ImgPath: "assets/profile3.jpg"),
                            Card2(imgPath: "assets/profile3.jpg"),
                          ],
                        ),
                        SizedBox(
                          height: 50 * screenWidth,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(
                                Name: "I am BATMAN!",
                                ImgPath: "assets/profile4.jpg"),
                            Card2(imgPath: "assets/profile4.jpg"),
                          ],
                        ),
                        SizedBox(
                          height: 50 * screenWidth,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: FIX THE ROUTE
                      Get.to('');
                    },
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: HexColor("#253428"),
                      primary: HexColor("#FB9C46"),
                      padding: EdgeInsets.symmetric(
                          horizontal: 60 * screenWidth, vertical: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontSize: 18 * screenWidth,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50 * screenWidth,
                  ),
                  Footer(),
                ],
              ),
            )));
  }
}

class TutorListMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 375;
    // TODO: implement build
    TextEditingController myController = TextEditingController();

    const dummyList = [
      'high to low price',
      'low to high price',
      'Rating',
      'Popularity',
      'No. of lessons'
    ];
    const NameList = [
      "Ty Ayelloribbin",
      "Hugo First",
      "Percy Vere",
      "Jack Aranda",
      "Olive Tree",
      "Fran G. Pani",
      "John Quil",
      "Ev R. Lasting",
      "Anne Thurium",
      "Cherry Blossom",
      "Glad I. Oli",
      "Ginger Plant",
      "Del Phineum",
      "Rose Bush",
      "Perry Scope",
      "Frank N. Stein",
      "Roy L. Commishun",
      "Pat Thettick",
      "Percy Kewshun",
      "Rod Knee",
      "Hank R. Cheef",
      "Bridget Theriveaquai",
      "Pat N. Toffis",
      "Karen Onnabit",
      "Col Fays",
      "Fay Daway",
      "Joe V. Awl",
      "Wes Yabinlatelee",
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10 * screenWidth,
                ),
                Card(
                    color: Colors.white,
                    elevation: 24 * screenWidth,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0 * screenWidth)),
                    child: Container(
                      width: 325 * screenWidth,
                      height: 60 * screenWidth,
                      padding: EdgeInsets.symmetric(
                          vertical: 10 * screenWidth,
                          horizontal: 20 * screenWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: HexColor("CCCCCC"),
                            size: 20 * screenWidth,
                          ),
                          SizedBox(
                              width: 260 * screenWidth,
                              height: 40 * screenWidth,
                              child: TextFieldSearch(
                                  initialList: NameList,
                                  label: "Search Tutor",
                                  controller: myController)),
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 29 * screenWidth, vertical: 10 * screenWidth),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Search
                        },
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: HexColor("#253428"),
                          primary: HexColor("#FB9C46"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50 * screenWidth,
                              vertical: 18 * screenWidth),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 14 * screenWidth,
                            color: Colors.white,
                            height: 1 * screenWidth,
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        elevation: 24 * screenWidth,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0 * screenWidth)),
                        child: Container(
                          width: 152 * screenWidth,
                          height: 46 * screenWidth,
                          padding: EdgeInsets.symmetric(
                              vertical: 10 * screenWidth,
                              horizontal: 10 * screenWidth),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: HexColor("CCCCCC"),
                                size: 20 * screenWidth,
                              ),
                              Container(
                                width: 100 * screenWidth,
                                child: DropDown(),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 29 * screenWidth, right: 29 * screenWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card3(
                          Name: "Broklynn Simons",
                          ImgPath: "assets/profile1.jpg"),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Card3(
                          Name: "Theresa Webb", ImgPath: "assets/profile2.jpg"),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Card3(
                          Name: "Nicolas Kate", ImgPath: "assets/profile3.jpg"),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      Card3(
                          Name: "I am BATMAN!", ImgPath: "assets/profile4.jpg"),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: FIX THE ROUTE
                          Get.to('');
                        },
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: HexColor("#253428"),
                          primary: HexColor("#FB9C46"),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40 * screenWidth,
                              vertical: 15 * screenWidth),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        child: Text(
                          "View More",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 14 * screenWidth,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20 * screenWidth,
                      ),
                    ],
                  ),
                ),
                Footer()
              ],
            ),
          ),
        ));
  }
}

class Card1 extends StatelessWidget {
  final String Name;
  final String ImgPath;

  const Card1({super.key, required this.Name, required this.ImgPath});

  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width / 1440;

    // TODO: implement build
    return Card(
      color: Colors.white,
      elevation: 24 * screenWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Container(
        width: 390 * screenWidth,
        height: 575 * screenWidth,
        padding: EdgeInsets.all(20 * screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              ImgPath,
              fit: BoxFit.fitHeight,
              width: 354 * screenWidth,
              height: 257 * screenWidth,
            ),
            Row(children: [
              Icon(
                Icons.play_circle_fill,
                color: Colors.black,
                size: 20 * screenWidth,
              ),
              SizedBox(
                width: 10 * screenWidth,
              ),
              Text(
                "20 Lessons",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 16 * screenWidth,
                    color: Colors.black),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Name,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 18 * screenWidth,
                      color: Colors.black),
                ),
                Text(
                  "4.9 rating",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 18 * screenWidth,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Community Tutor",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200,
                      fontSize: 16 * screenWidth,
                      color: HexColor("#6C6C6C")),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 20 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 20 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 20 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 20 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 20 * screenWidth,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Speaks",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20 * screenWidth,
                  color: Colors.black),
            ),
            Row(children: [
              Text(
                "English -",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16 * screenWidth,
                    color: HexColor("#6C6C6C")),
              ),
              SizedBox(width: 5 * screenWidth),
              Text(
                "Spanish",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16 * screenWidth,
                    color: HexColor("#FB9C46")),
              ),
              SizedBox(width: 10 * screenWidth),
              Text(
                "|  English -",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16 * screenWidth,
                    color: HexColor("#6C6C6C")),
              ),
              SizedBox(width: 5 * screenWidth),
              Text(
                "Spanish",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16 * screenWidth,
                    color: HexColor("#FB9C46")),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "30 Min trial",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * screenWidth,
                      color: Colors.black),
                ),
                Text(
                  "hourly rate from",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * screenWidth,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "IDR - 85,730.10",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * screenWidth,
                      color: HexColor("#6C6C6C")),
                ),
                Text(
                  "IDR - 485,730.10",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * screenWidth,
                      color: HexColor("#6C6C6C")),
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: Divider(
                thickness: 1,
                color: HexColor("#6C6C6C"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: HexColor("#FB9C46"),
                      size: 20 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Text(
                      "120 Students",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 16 * screenWidth,
                          color: HexColor("#FB9C46")),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: FIX THE ROUTE
                    Get.to(TutorProfilePage());
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: HexColor("#253428"),
                    primary: HexColor("#058E6E"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30 * screenWidth,
                        vertical: screenWidth * 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: Text(
                    "Book",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 16 * screenWidth,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  final String imgPath;

  const Card2({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final screenWidth = MediaQuery.of(context).size.width / 1440;
    return Card(
      color: Colors.white,
      elevation: 24 * screenWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Container(
          width: 450 * screenWidth,
          height: 576 * screenWidth,
          padding: EdgeInsets.all(20 * screenWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Image.asset(imgPath,
                      fit: BoxFit.fitHeight, height: 257 * screenWidth),
                  Container(
                    height: 257 * screenWidth,
                    color: Color.fromRGBO(10, 10, 10, 90),
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.black,
                      size: 50 * screenWidth,
                    ),
                    alignment: Alignment.center,
                  )
                ],
              ),
              Text("Description",
                  softWrap: true,
                  style: TextStyle(
                    letterSpacing: 2.0 * screenWidth,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20 * screenWidth,
                    color: Colors.black,
                  )),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat aliquam integer sit mauris sit. Pellentesque urna, adipiscing at aliquam tempor non. Lectus bibendum sollicitudin aliquet id...",
                  softWrap: true,
                  style: TextStyle(
                    letterSpacing: 2.0 * screenWidth,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16 * screenWidth,
                    color: HexColor("#6C6C6C"),
                  )),
              Container(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: FIX THE ROUTE
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: HexColor("#253428"),
                    primary: HexColor("#058E6E"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30 * screenWidth,
                        vertical: screenWidth * 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: Text(
                    "Book",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 16 * screenWidth,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class Card3 extends StatelessWidget {
  final String Name;
  final String ImgPath;

  const Card3({super.key, required this.Name, required this.ImgPath});

  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width / 375;

    // TODO: implement build
    return Card(
      color: Colors.white,
      elevation: 24 * screenWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Container(
        width: 325 * screenWidth,
        height: 486 * screenWidth,
        padding: EdgeInsets.all(14 * screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              ImgPath,
              fit: BoxFit.fitHeight,
              width: 292 * screenWidth,
              height: 170 * screenWidth,
            ),
            Row(children: [
              Icon(
                Icons.play_circle_fill,
                color: Colors.black,
                size: 14 * screenWidth,
              ),
              SizedBox(
                width: 10 * screenWidth,
              ),
              Text(
                "20 Lessons",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14 * screenWidth,
                    color: Colors.black),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Name,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 16 * screenWidth,
                      color: Colors.black),
                ),
                Text(
                  "4.9 rating",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900,
                      fontSize: 16 * screenWidth,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Community Tutor",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200,
                      fontSize: 14 * screenWidth,
                      color: HexColor("#6C6C6C")),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 14 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 14 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 14 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 14 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Icon(
                      Icons.star,
                      color: HexColor("#FB9C46"),
                      size: 14 * screenWidth,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Speaks",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 18 * screenWidth,
                  color: Colors.black),
            ),
            Row(children: [
              Text(
                "English -",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 14 * screenWidth,
                    color: HexColor("#6C6C6C")),
              ),
              SizedBox(width: 5 * screenWidth),
              Text(
                "Spanish",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 14 * screenWidth,
                    color: HexColor("#FB9C46")),
              ),
              SizedBox(width: 10 * screenWidth),
              Text(
                "|  English -",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 14 * screenWidth,
                    color: HexColor("#6C6C6C")),
              ),
              SizedBox(width: 5 * screenWidth),
              Text(
                "Spanish",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 14 * screenWidth,
                    color: HexColor("#FB9C46")),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "30 Min trial",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14 * screenWidth,
                      color: Colors.black),
                ),
                Text(
                  "hourly rate from",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14 * screenWidth,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "IDR - 85,730.10",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14 * screenWidth,
                      color: HexColor("#6C6C6C")),
                ),
                Text(
                  "IDR - 485,730.10",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14 * screenWidth,
                      color: HexColor("#6C6C6C")),
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: Divider(
                thickness: 1,
                color: HexColor("#6C6C6C"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: HexColor("#FB9C46"),
                      size: 14 * screenWidth,
                    ),
                    SizedBox(width: 5 * screenWidth),
                    Text(
                      "120 Students",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 14 * screenWidth,
                          color: HexColor("#FB9C46")),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: FIX THE ROUTE
                    Get.to(TutorProfilePage());
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: HexColor("#253428"),
                    primary: HexColor("#058E6E"),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30 * screenWidth,
                        vertical: screenWidth * 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: Text(
                    "Book",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 14 * screenWidth,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DropDownStae();
  }
}

class DropDownStae extends State<DropDown> {
  String dropdownValue = dummyList.first;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.maxFinite,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(
          Icons.arrow_drop_down_sharp,
          color: HexColor("CCCCCC"),
          size: 25,
        ),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: HexColor("CCCCCC"),
        ),
        isExpanded: true,
        alignment: AlignmentDirectional.bottomCenter,
        hint: Text("Sort"),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: dummyList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
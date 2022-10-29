import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tutorify/pages/footer.dart';
import 'package:tutorify/pages/tutor_profile_page.dart';

class TutorListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width / 1440;

    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Container(
                    width: double.maxFinite,
                    padding:EdgeInsets.only(left: 270*screenWidth,right: 270*screenWidth,top: 50*screenWidth),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(Name: "Broklynn Simons", ImgPath: "assets/profile1.jpg"),
                            Card2(imgPath: "assets/profile1.jpg"),
                          ],
                        ),
                        SizedBox(height: 50*screenWidth,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(Name: "Theresa Webb", ImgPath: "assets/profile2.jpg"),
                            Card2(imgPath: "assets/profile2.jpg"),
                          ],
                        ),
                        SizedBox(height: 50*screenWidth,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(Name: "Nicolas Kate", ImgPath: "assets/profile3.jpg"),
                            Card2(imgPath: "assets/profile3.jpg"),
                          ],
                        ),
                        SizedBox(height: 50*screenWidth,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card1(Name: "I am BATMAN!", ImgPath: "assets/profile4.jpg"),
                            Card2(imgPath: "assets/profile4.jpg"),
                          ],
                        ),
                        SizedBox(height: 50*screenWidth,),
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
                      padding: EdgeInsets.symmetric(horizontal: 60*screenWidth, vertical: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                    ),
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontSize: 18*screenWidth,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 50*screenWidth,),
                  Footer(),
                ],
              ),
            )
        )





    );


  }


}



class Card1 extends StatelessWidget {

  final String Name;
  final String ImgPath;

  const Card1({super.key, required this.Name, required this.ImgPath});

  @override
  Widget build(BuildContext context) {
    //Get dimensions
    final screenWidth = MediaQuery.of(context).size.width/1440;



    // TODO: implement build
    return Card(
      color: Colors.white,
      elevation: 24*screenWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Container(
        width: 390*screenWidth,
        height: 575*screenWidth,
        padding: EdgeInsets.all(20*screenWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImgPath, fit: BoxFit.fitHeight,width: 354*screenWidth,height: 257*screenWidth,),

            Row(children: [Icon(Icons.play_circle_fill, color: Colors.black,), SizedBox(width: 10*screenWidth,), Text("20 Lessons", style: TextStyle(fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 16*screenWidth,
                color: Colors.black),)]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Name, style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    fontSize: 18*screenWidth,
                    color: Colors.black),),
                Text("4.9 rating", style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    fontSize: 18*screenWidth,
                    color: Colors.black),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Community Tutor", style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w200,
                    fontSize: 16*screenWidth,
                    color: HexColor("#6C6C6C")),),
                Row(
                  children: [
                    Icon(Icons.star, color: HexColor("#FB9C46"),),
                    SizedBox(width:5*screenWidth),
                    Icon(Icons.star, color: HexColor("#FB9C46"),),
                    SizedBox(width:5*screenWidth),
                    Icon(Icons.star, color: HexColor("#FB9C46"),),
                    SizedBox(width:5*screenWidth),
                    Icon(Icons.star, color: HexColor("#FB9C46"),),
                    SizedBox(width:5*screenWidth),
                    Icon(Icons.star, color: HexColor("#FB9C46"),),
                  ],
                ),

              ],
            ),

            Text("Speaks", style: TextStyle(fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 20*screenWidth,
                color: Colors.black),),

            Row(

                children: [
                  Text("English -", style: TextStyle(fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16*screenWidth,
                      color: HexColor("#6C6C6C")),),
                  SizedBox(width:5*screenWidth),
                  Text("Spanish", style: TextStyle(fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16*screenWidth,
                      color: HexColor("#FB9C46")),),
                  SizedBox(width:10*screenWidth),
                  Text("|  English -", style: TextStyle(fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16*screenWidth,
                      color:HexColor("#6C6C6C")),),
                  SizedBox(width:5*screenWidth),
                  Text("Spanish", style: TextStyle(fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16*screenWidth,
                      color: HexColor("#FB9C46")),),
                ]

            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("30 Min trial", style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16*screenWidth,
                    color: Colors.black),),
                Text("hourly rate from", style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16*screenWidth,
                    color: Colors.black),),
              ],
            ),


            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("IDR - 85,730.10", style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16*screenWidth,
                    color: HexColor("#6C6C6C")),),
                SizedBox(width:80*screenWidth),
                Text("IDR - 485,730.10", style: TextStyle(fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16*screenWidth,
                    color: HexColor("#6C6C6C")),),
              ],
            ),
            SizedBox(width:double.maxFinite, child: Divider(thickness: 1,color: HexColor("#6C6C6C"),),),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person, color: HexColor("#FB9C46"),),
                    SizedBox(width:5*screenWidth),
                    Text("120 Students", style: TextStyle(fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 16*screenWidth,
                        color: HexColor("#FB9C46")),),
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
                    padding: EdgeInsets.symmetric(horizontal: 30*screenWidth, vertical: screenWidth*20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  child: Text(
                    "Book",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 16*screenWidth,
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
    final screenWidth = MediaQuery.of(context).size.width/1440;
    return Card(
      color: Colors.white,
      elevation: 24*screenWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Container(
          width: 450*screenWidth,
          height: 576*screenWidth,
          padding: EdgeInsets.all(20*screenWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Image.asset(imgPath, fit: BoxFit.fitHeight,height: 257*screenWidth),
                  Container(height: 257*screenWidth,color: Color.fromRGBO(10, 10, 10, 90),child: Icon(Icons.play_circle_fill, color: Colors.black,size: 50*screenWidth,),alignment: Alignment.center,)
                ],
              ),
              Text(
                  "Description",
                  softWrap: true,
                  style: TextStyle(
                    letterSpacing: 2.0*screenWidth,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20*screenWidth,
                    color:  Colors.black,
                  )),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat aliquam integer sit mauris sit. Pellentesque urna, adipiscing at aliquam tempor non. Lectus bibendum sollicitudin aliquet id...",
                  softWrap: true,
                  style: TextStyle(
                    letterSpacing: 2.0*screenWidth,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16*screenWidth,
                    color:  HexColor("#6C6C6C"),
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
                    padding: EdgeInsets.symmetric(horizontal: 30*screenWidth, vertical: screenWidth*20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                  child: Text(
                    "Book",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 16*screenWidth,
                      color: Colors.white,
                    ),
                  ),
                ),
              )


            ],
          )

      ),
    );
  }
}

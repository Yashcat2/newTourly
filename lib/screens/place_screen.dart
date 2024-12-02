import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newtourly/utilities/colors.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: kWhiteClr,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assests/images/Coeurdes Alpes.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(15),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kWhiteClr,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: kb2,
                                blurRadius: 2,
                                spreadRadius: 4,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: kWhite3,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom:-20 ,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kWhiteClr,
                      shape: BoxShape.circle,
                      boxShadow: [
                              BoxShadow(
                                color:kb2,
                                blurRadius: 2,
                                spreadRadius: 4,
                              ),
                            ],
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: kred,
                    ),
                  ),
                  ),

              ],
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Galle",
                  style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: const Color(0xFF232323)
                ),
                ),
                Text(
                  "Show map",
                  style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: kPrimary3
                ),
                ),
              ],
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Icon(
                  Icons.star,
                  color: Colors.amber,
                 ),
                 SizedBox(width: 5),
                 Text(
                  "4.5 (354 Reviews)",
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xFF606060)
                ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
                  "Galle is a city on the southwest coast of Sri Lanka. It’s known for Galle Fort, the fortified old city founded by Portuguese colonists in the 16th century. Stone sea walls, expanded by the Dutch, encircle car-free streets with architecture reflecting Portuguese, Dutch and British rule. Notable buildings include the 18th-century Dutch Reformed Church. Galle Lighthouse stands on the fort’s southeast tip.",
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15, 
                  color: const Color(0xFF606060)
                ),
                ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.fromLTRB(0,0,0,29 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  "Facilities",
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color(0xFF232323)
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildCard(assestPath :'assests/vectors/vector_2_x2.svg',
                    text: "1 Heater",  
                    ),
                    _buildCard(assestPath :'assests/vectors/vector_1_x2.svg',
                    text: "1 Dinner",  
                    ),
                    _buildCard(assestPath :'assests/vectors/vector_x2.svg',
                    text: "1 Tub",  
                    ),
                    _buildCard(assestPath :'assests/vectors/vector_3_x2.svg',
                    text: "1 Pool",  
                    ),
                  ],
                )
                ],
              ),
            )
          ],
        ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric( horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0,4,0,4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                  "Price",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16, 
                  color: const Color(0xFF232323),
                ),
                ),
                ),
                Text(
                  "\$199" ,
                  style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16, 
                  color: const Color(0xE2ff5252),
                ),
                ),
              ],
            ),
            ),
             SizedBox(height: 10 ),
              GestureDetector(
                onTap: (){


                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width/1.8,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF176FF2),
                ),
                child: Center(child: Text(
                  "Book Now",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),),
                ),
              ),
          ],
        ),
      ), 
       
    ),
    );
  }

  Widget _buildCard({required String assestPath,required String text}){
    return Expanded(child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.fromLTRB(0, 14,0,12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0x0D176FF2)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            width: 30,
            height: 28,
            child: SvgPicture.asset(assestPath),
          ),
          Padding(padding: EdgeInsets.only(right: 1.3),
          child: Text(
                  text,
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15, 
                  color: Colors.black26,
                ),
                ),
          )
        ],
      ),
    ),
    );
  }
}
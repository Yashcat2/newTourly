import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newtourly/screens/place_screen.dart';
import 'package:newtourly/utilities/colors.dart';

class PopularItem extends StatelessWidget {
  final String title;
  final String rating;
  final String image;

  const PopularItem(
    {super.key, 
    required this.title, 
    required this.rating, 
    required this.image}
    );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: 
        (context)=>PlaceScreen()));
      },
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kBlackClr,
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.9,            
            image: AssetImage(image)
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: 
                      EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                      decoration: BoxDecoration(
                        color: kash2,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: kWhiteClr
                      ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: 
                      EdgeInsets.symmetric(vertical: 6,horizontal: 12),
                      decoration: BoxDecoration(
                        color: kash2,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset("assests/vectors/star_1_x2.svg",
                          width: 20,
                          height: 20,
                          ),
                          SizedBox(width: 5),
                          Text(rating,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: kWhiteClr
                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: kWhiteClr,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: kred,
                  ),
                )

              ],
            ),
            SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }
}
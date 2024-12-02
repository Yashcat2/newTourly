import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newtourly/utilities/colors.dart';

class RecomendedCard extends StatelessWidget {
  final String title;
  final String duration;
  final String deal;
  final String image;

  const RecomendedCard({super.key, required this.title, required this.duration, required this.deal, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: 175,
        decoration: BoxDecoration(
          border: Border.all(
            color: kmerun
          ),
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            kWhiteClr,
            kaqua,
          ],        
          ),
          boxShadow: [
            BoxShadow(
            color: kash3,
            offset: Offset(0, 4),
            blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(bottom: 8,right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: k4,
                    borderRadius: BorderRadius.circular(9)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                  child: Text(duration,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: kWhiteClr,
                  ),),
                ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: kBlackClr,
            ),
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                SvgPicture.asset('assests/vectors/shape_2_x2.svg',
                height: 12,
                width: 12,
                ),
                SizedBox(width: 5.5),
                Text(
                  deal,
                  style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: k4,
                ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
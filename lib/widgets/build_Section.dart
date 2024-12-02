import 'package:flutter/material.dart';
import 'package:newtourly/utilities/colors.dart';

class BuildSection extends StatelessWidget {
  final String title; 
  final List<Widget> items;
  const BuildSection({super.key,required this.title, required this.items});

  @override
  Widget build(BuildContext context ) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: kBlackClr,
            ),
          ),
          Text(
            "See all",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: kPrimaryClr,
            ),
          ),
        ],
      ),
      SizedBox(height: 12),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items,
        ),
      ),
    ],
  );
}}
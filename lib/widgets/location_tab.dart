import 'package:flutter/material.dart';
import 'package:newtourly/widgets/build_section.dart';
import 'package:newtourly/widgets/popular_item.dart';
import 'package:newtourly/widgets/recomended_item.dart';
import 'package:newtourly/widgets/category_card.dart'; // Assuming you have this widget

class LocationTab extends StatelessWidget {
  const LocationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal category list
            SizedBox(
              height: 70, 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    press: () {},
                    image: "assests/images/mountains.jpeg", // Corrected path
                    title: "Mountains",
                  ),
                  const SizedBox(width: 10),
                  CategoryCard(
                    press: () {},
                    image: "assests/images/forests.jpeg", // Corrected path
                    title: "Forests",
                  ),
                  const SizedBox(width: 10),
                  CategoryCard(
                    press: () {},
                    image: "assests/images/sea.webp", // Corrected path
                    title: "Sea",
                  ),
                  const SizedBox(width: 10),
                  CategoryCard(
                    press: () {},
                    image: "assests/images/deserts.jpeg", // Corrected path
                    title: "Deserts",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Popular Section
            BuildSection(
              title: "Popular",
              items: [
                PopularItem(
                  title: "Hotel Grand",
                  rating: "4.7",
                  image: "assests/images/r.png", // Corrected path
                ),
                const SizedBox(width: 20),
                PopularItem(
                  title: "Coastal Paradise",
                  rating: "4.6",
                  image: "assests/images/Alley Palace.png", // Corrected path
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Recommended Section
            BuildSection(
              title: "Recommended",
              items: [
                RecomendedCard(
                  title: "Luxury Stay",
                  duration: "4N/5D",
                  deal: "Hot Deal",
                  image: "assests/images/Coeurdes Alpes.png", // Corrected path
                ),
                const SizedBox(width: 20),
                RecomendedCard(
                  title: "Budget Friendly",
                  duration: "3N/4D",
                  deal: "New Deal",
                  image: "assests/images/Alley Palace.png", // Corrected path
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

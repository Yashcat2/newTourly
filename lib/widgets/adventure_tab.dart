import 'package:flutter/material.dart';
import 'package:newtourly/widgets/build_section.dart';
import 'package:newtourly/widgets/popular_item.dart';
import 'package:newtourly/widgets/recomended_item.dart';

class AdventureTab extends StatelessWidget {
  const AdventureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildSection(
              title: "Popular Advenures",
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
            BuildSection(
              title: "Recommended ADventures",
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

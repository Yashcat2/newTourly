import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtourly/commons/collapsing_navigation_bar.dart';
import 'package:newtourly/utilities/colors.dart';
import 'package:newtourly/widgets/adventure_tab.dart';
import 'package:newtourly/widgets/food_tab.dart';
import 'package:newtourly/widgets/hotel_tab.dart';
import 'package:newtourly/widgets/location_tab.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}
 // Define a GlobalKey for the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _ExploreScreenState extends State<ExploreScreen>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey, // Assign the GlobalKey to the Scaffold

        drawer: CollapsingNavigationBar(),
        backgroundColor:kWhiteClr,
        body:Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.menu, size: 38),
                            onPressed: () {
                              // Use the GlobalKey to open the drawer
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            ), 
                          SizedBox(width: 8),
                          Text(
                            "Explore",
                          style: 
                          TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            
                          ),
                          ),
                        ],
                      ),
                      Text(
                        " Tourly",
                      style: 
                      TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                      ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.location_solid,
                      size: 25,
                      color: kPrimaryClr
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Galle",
                      style: 
                      TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: kash
                      ),
                      ),
                    ],
                  )
                ],
              ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 6),
                  decoration: BoxDecoration(
                    color: kWhite2,
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find places to visit',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
                ),
                TabBar(
                  controller: _tabController,
                  indicatorColor: kPrimaryClr,
                  labelColor:kPrimaryClr ,
                  unselectedLabelColor:kWhite3,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  tabs: [
                    Tab(text: "Location"),
                    Tab(text: "Hotels"),
                    Tab(text: "Food"),
                    Tab(text: "Adventures"),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: TabBarView(
                  controller:_tabController,
                  children: [
                    buildTabContent("Location"),
                    buildTabContent("Hotels"),
                    buildTabContent("Food"),
                    buildTabContent("Adventure"),
                  ],))
            ],
        ) ,
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: kPrimaryClr,
          currentIndex: 0,
          unselectedItemColor: Colors.black38,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          ],
        ),
      ),
    );
  }
}
Widget buildTabContent(String tab) {
  if (tab == "Location") {
    // Existing content for "Location"
    return LocationTab();
  } else if (tab == "Hotels") {
    // Content for "Hotels"
    return HotelTab();
  } else if (tab == "Food") {
    // Content for "Food"
    return AdventureTab();
  } else if (tab == "Adventure") {
    // Content for "Adventure"
    return FoodTab();
  } else {
    return Center(child: Text("No content available"));
  }
}

// Widget buildLocationTabContent() {
//   return Padding(
//     padding: EdgeInsets.symmetric(horizontal: 20),
//     child: SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Popular",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 18,
//                   color: kBlackClr,
//                 ),
//               ),
//               Text(
//                 "See all",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 12,
//                   color: kPrimaryClr,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 12),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 PopularItem(
//                   title: "Mirissa",
//                   rating: "4.5",
//                   image: "assests/images/r.png",
//                 ),
//                 SizedBox(width: 16),
//                 PopularItem(
//                   title: "Galle Fort",
//                   rating: "4.9",
//                   image: "assests/images/Alley Palace.png",
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }


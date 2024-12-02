import 'package:flutter/material.dart';
import 'package:newtourly/screens/explore_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Container(
      padding: EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assests/images/welcome.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.5,
// 
        ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Align(
            alignment: Alignment.center,
            child: Text(
              "Tourly",
              style:TextStyle (
                fontWeight: FontWeight.bold,
                fontSize: 80,
                color: Colors.white,
              ),
            ),
          ),Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text:TextSpan(
                      style: TextStyle(                        
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                            
                      ),
                      children:[
                        TextSpan(text: "Plan Your Trip",
                        style: TextStyle(                          
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,  
                          height: 1.3,  
                        ),
                      ),
                        TextSpan(text: ""),
                        TextSpan(text: "Luxurious Vacation",
                        style: TextStyle(                          
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,  
                          height: 1.3,  
                        ),
                        ),
                      ], 
                    ) ,
                  ),
                ),
              ),
              SizedBox(height: 10 ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ExploreScreen()),);
                },
                child: Container(padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF176FF2),
                ),
                child: Center(child: Text(
                  "Explore",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),),
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
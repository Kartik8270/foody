import 'package:flutter/material.dart';
import 'package:foody/widgets/widget_support.dart';
import '../details.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:
              const EdgeInsets.only(left: 4.0, right: 4.0, top: 14.0),
          child: const Text(
            "Hello Kartik,",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Playwrite_GBS",
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 4.0),
        child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome to Foody",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Playwrite_GBS",
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Text(
                "Get your favourite food now!",
                style: AppWidget.normalTextStyle(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Material(
                  elevation: 5,
                    child: Image.asset(
                      "images/ice-cream.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),


                  Material(
                    elevation: 5,
                    child: Image.asset(
                      "images/salad.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                     Material(
                    elevation: 5,
                    child: Image.asset(
                      "images/pizza.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                     Material(
                    elevation: 5,
                    child: Image.asset(
                      "images/burger.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        width: 180,
                        height: 200,
                        
                        padding: const EdgeInsets.only(left: 16.0,right: 16.0, top:12.0,bottom: 1.0),
                        margin: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color.fromARGB(255, 26, 15, 15),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 100,width: 100, child: Image.asset("images/salad3.png")),
                            SizedBox(height: 30),
                            Text(
                              "Special Salad",
                              style: AppWidget.foodTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 180,
                        height: 200,
                        
                        padding: const EdgeInsets.only(left: 16.0,right: 16.0, top:12.0,bottom: 1.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color.fromARGB(255, 26, 15, 15),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 100,width: 100, child: Image.asset("images/salad2.png")),
                            SizedBox(height: 30),
                            Text(
                              "Punjabi Salad",
                              style: AppWidget.foodTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 180,
                        height: 200,
                        
                        padding: const EdgeInsets.only(left: 16.0,right: 16.0, top:8.0,bottom: 1.0),
                        margin: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color.fromARGB(255, 26, 15, 15),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 100,width: 100, child: Image.asset("images/salad3.png")),
                            SizedBox(height: 30),
                            Text(
                              "Russian Salad",
                              style: AppWidget.foodTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 180,
                        height: 200,
                        
                        padding: const EdgeInsets.only(left: 16.0,right: 6.0, top:12.0,bottom: 1.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color.fromARGB(255, 26, 15, 15),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 100,width: 100, child: Image.asset("images/salad4.png")),
                            SizedBox(height: 30),
                            Text(
                              "Amritsari Salad",
                              style: AppWidget.foodTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
           
          ),
        ),
      ),
    );
  }
}
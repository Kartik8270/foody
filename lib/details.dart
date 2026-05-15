import 'package:flutter/material.dart';
import 'package:foody/widgets/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          top: 40.0,
          right: 20.0,
          bottom: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, size: 20),
            ),
            SizedBox(height: 120),

            Image.asset(
              "images/salad3.png",
              width: double.infinity,
              height: 200,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Special Salad",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Playwrite_GBS",
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (a > 1) {
                        a--;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(Icons.remove, color: Colors.white, size: 20),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  a.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Playwrite_GBS",
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      a++;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            Text(
              "This Salad is made with fresh vegetables and a special dressing that gives it a unique flavor. It's perfect for a light lunch or as a side dish for dinner.It is made by some of the best punjabi chefs of india  with a blend of russian essence and some thailand spices. It is a perfect blend of taste and health, making it a great choice for anyone looking for a delicious and nutritious meal.",
              style: AppWidget.fooddescriptionStyle(),
            ),
            SizedBox(height: 80),
            Row(
              children: [
                Text("Delievery Time", style: AppWidget.foodTextStyle()),
                SizedBox(width: 60),
                Icon(Icons.access_time, color: Colors.black, size: 20),
                Text(" 30 min", style: AppWidget.foodTextStyle()),
              ],
            ),

            SizedBox(height: 40),
            Row(
              children: [
                Column(
                  children: [
                    Text("Total Price", style: AppWidget.boldTextStyle()),
                    SizedBox(height: 5),
                    Text("\$200.00", style: AppWidget.boldTextStyle()),
                  ],
                ),
                Spacer(),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Playwrite_GBS",
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(color: Colors.grey),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

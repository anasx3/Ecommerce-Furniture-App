// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:furniture_app/screen/Category_Screen.dart';
import 'package:furniture_app/screen/ScreenTow.dart';
import 'package:furniture_app/widget/Prodcuts_Widget.dart';

class HomeScreen extends StatelessWidget {
  List categories = [
    "كراسي جلوس",
    "أريكة",
    "سرير",
    "طاولات",
  ];
  List names = [
    "كرسي مطبخ",
     "كرسي مكتب",
      "كرسي متحرك", 
      "كرسي استرخاء"
      ];
  List price = [
    "100", 
    "50",
    "250",
    "500"
      ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
        color: Color(0xFFF3F6FD),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "منتجاتنا",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12),
                            ),
                            color: Colors.white,
                            intensity: 1,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black54,
                  labelColor: Colors.black,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: "كراسي جلوس",
                    ),
                    Tab(
                      text: "أريكة",
                    ),
                    Tab(
                      text: "سرير",
                    ),
                    Tab(
                      text: "طاولات",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 360,
                  child: TabBarView(
                    children: [
                      ProdcutsWidget(),
                      ScreenTow(),
                      ProdcutsWidget(),
                      ProdcutsWidget(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen(category: '',)));
                        },
                        child: Neumorphic(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20)),
                            color: Colors.white,
                            intensity: 1,
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "أفضل العروض",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          "assets/Product ${index + 1}.png",
                        ),
                        title: Text(
                          names[index],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        trailing: Text(
                        price[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

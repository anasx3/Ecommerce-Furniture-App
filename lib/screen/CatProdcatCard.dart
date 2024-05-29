// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:furniture_app/widget/Prodcuts_Widget.dart';

class CatProdcatCard extends StatelessWidget {
  int pIndex;
  CatProdcatCard(this.pIndex);
  List names = ["كرسي مطبخ", "كرسي مكتب", "كرسي متحرك", "كرسي استرخاء"];
  List price = ["100", "50", "250", "500"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(9),
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(12),
            ),
            color: Colors.white,
            intensity: 1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/Product ${pIndex + 1}.png",
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                names[pIndex],
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                price[pIndex],
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

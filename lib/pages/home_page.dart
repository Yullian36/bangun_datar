import 'dart:ui';
import 'dart:ui_web';

import 'package:bangun_datar_app/pages/PersegiPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
              },
              child:
                  CustomMenu(imageAssets: "assets/img.png", title: "persegi")),
          Expanded(child: CustomMenu(imageAssets: "assets/img_1.png", title: "Trisula")),
          Expanded(child: CustomMenu(imageAssets: "assets/img_1.png", title: "Trisula")),



        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 150,
          ),
          Text(title),
        ],
      ),
    );
  }
}

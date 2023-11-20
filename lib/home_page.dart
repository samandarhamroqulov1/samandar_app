import 'package:flutter/material.dart';
import 'package:samandar_app/hayvonlar/akula.dart';
import 'package:samandar_app/hayvonlar/ayiq.dart';
import 'package:samandar_app/hayvonlar/gipart.dart';
import 'package:samandar_app/hayvonlar/sher.dart';
import 'package:samandar_app/hayvonlar/yulbars_page.dart';

import 'icon_page.dart';

class homePage extends StatefulWidget {
  static final String id = 'home_aka';

  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, IconPage.id);
            },
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          "Yirtqich hayvonlar",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          _itemList(
              image: "assets/images/Yulbars.jpg",
              name: "Yo'lbars",
              yaer: "Tropik O'rmonlarda",
              page: YulPage.id),
          _itemList(
              image: "assets/images/Ayiq.jpg",
              name: "Ayiq",
              yaer: "Sovuq Muzliklarda",
              page: AyiqPage.id),
          _itemList(
              image: "assets/images/sher.jpg",
              name: "She'r",
              yaer: "Afrika o'rmonlarida",
              page: sherPage.id),
          _itemList(
              image: "assets/images/Gipart.jpg",
              name: "Gipart",
              yaer: "Sahrolarda",
              page: gipartPage.id),
          _itemList(
              image: "assets/images/Akula.png",
              name: "Akula",
              yaer: "Suv tubida",
              page: AkulaPage.id),
        ],
      ),
    );
  }

  Widget _itemList({image, name, yaer, page}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover, //change image fill type
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  yaer,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

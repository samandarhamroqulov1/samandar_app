import 'package:flutter/material.dart';
import 'package:samandar_app/hayvonlar/akula.dart';
import 'package:samandar_app/hayvonlar/ayiq.dart';
import 'package:samandar_app/hayvonlar/gipart.dart';
import 'package:samandar_app/hayvonlar/sher.dart';
import 'package:samandar_app/hayvonlar/yulbars_page.dart';
import 'package:samandar_app/home_page.dart';
import 'package:samandar_app/icon_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:homePage(),
      debugShowCheckedModeBanner: false,
      routes:{
        YulPage.id:(context)=>YulPage(),
        homePage.id:(context)=>homePage(),
        AyiqPage.id:(context)=>AyiqPage(),
       sherPage.id:(context)=>sherPage(),
        gipartPage.id:(context)=>gipartPage(),
        AkulaPage.id:(context)=>AkulaPage(),
        IconPage.id:(context)=>IconPage(),

      } ,
    );
  }
}



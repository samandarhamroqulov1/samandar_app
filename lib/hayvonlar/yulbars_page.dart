import 'package:flutter/material.dart';
import 'package:samandar_app/servise/matnlar.dart';
class YulPage extends StatefulWidget {
  static final String id='yulbars_aka';
  const YulPage({super.key});

  @override
  State<YulPage> createState() => _YulPageState();
}

class _YulPageState extends State<YulPage> {
 MatnServise matn =MatnServise();
 int index=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: CustomScrollView(
    slivers: [
    SliverAppBar(
    leading: IconButton(
     color: Colors.white,
    icon: Icon(
    Icons.arrow_back,
    color: Colors.white,
    ),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    expandedHeight: 240,
    floating: true,
    pinned: true,
    snap: true,
    elevation: 50,
    backgroundColor: Colors.black,
    flexibleSpace: FlexibleSpaceBar(
    centerTitle: true,
    title: Text(
    "Yo'lbars",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30),
    ),
    background: Image(
    image: AssetImage("assets/images/yulbars.jpg"),
    fit: BoxFit.cover,
    ),
    ),
    ),
    SliverToBoxAdapter(
    child: Padding(
    padding: EdgeInsets.all(20),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Text(
    "Nomi:",
    style: TextStyle(
    color: Colors.red,
    fontSize: 22,
    fontWeight: FontWeight.bold),
    ),
    SizedBox(
    width: 6,
    ),
    Text(
    "Yo'lbars",
    style: TextStyle(
    color: Colors.black87,
    fontSize: 22,
    fontWeight: FontWeight.bold),
    )
    ],
    ),
    SizedBox(
    height: 20,
    ),
    Text(
    "Ma'lumot:",
    style: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 24),
    ),
    SizedBox(
    height: 10,
    ),
    Text(
    matn.getUzunMatn(index).matn,
    style:
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    SizedBox(
    height: 20,
    ),
    ],
    ),
    ),
    ),
    )
    ],
    ),
    );

  }
}
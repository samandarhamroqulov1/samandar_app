import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {
  static final String id = "icon_page";

  const IconPage({super.key});

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.black,
        title: Text(
          "About programma",style: TextStyle(color: Colors.white),

        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/images/sher.jpg"),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Hayvonlar, hayvonot dunyosi — organik olam sistemasidagi yirik boʻlimlardan biri. Hayvonlarning bundan 1 — 1,5 milliard yil ilgari okean suvida mikroskopik, xlorofillsiz amyobasimon xivchinlilar shaklida paydo boʻlganligi taxmin qilinadi. Hayvonlarning eng qadimgi qazilma qoldiqlari yoshi 0,8 milliard yildan oshmaydi. Koʻp hujayrali hayvonlar — boʻshliqichlilar, chuvalchanglar, tuban boʻgʻim-oyoqlilarning dastlabki qoldiqlari soʻnggi kembriy qatlamlaridan boshlab (mil.dan 690—570 million yil avval) uchraydi. Kembriy davri boshlarida (mil.dan 570—490 million yil avval) tashqi mineral skeletli (chigʻanoqli yoki xitinli) dengiz umurtqasizlarining koʻpchilik guruxlari (trilobitalar, jabraoyoqlilar, mollyuskalar, arxeotsiatlar) rivojlangan. Kembriyning oxirida tashqi skeletga ega boʻlgan umurtqasizlar (toʻgarak ogʻizlilartsht qadimgi ajdodlari) kelib chiqqan. Silurda (mil.dan 445—400 million yil avval) hayvonlar oʻsimliklar bilan bir vaqtda quruqtik yuzasini egallay boshlaydi. Silurning keyingi davrida, dastlabki chayonlar, devon oxiridan boshlab (mil.dan 400—345 million yil avval) dastlabki quruqlikda yashovchi umurtqalilar — suvda hamda quruqlikda yashovchilar rivojlangan. Karbon davrida (mil.dan 345—280 million yil avval) quruqlikda umurtqasizlardan hasharotlar, umurtqalilardan tuban tuzilishga ega boʻlgan sudralib yuruvchilar va suvda hamda quruqlikda yashovchilar, Mezozoyning trias, yura va boʻr davrlarida (mil.dan 230—66 million yil avval) sudralib yuruvchilar hukmronlik qilgan. Trias oʻrtalarida (mil.dan 230—195 million yil avval) dinozavrlar, bu davr oxirida sut emizuvchilar kelib chiqqan. Qushlar yura davrining oxiridan (mil.dan 195—136 million yil avval) maʼlum. Boʻr davrining oxiriga kelib (mil.dan 136— 66 million yil avval) koʻpchilik dengiz umurtqasizlari, dengiz va quruqlikda yashovchi sudralib yuruvchilar, jumladan. dinozavrlar qirilib ketadi; ular oʻrnini qushlar va sut emizuvchilar egallaydi. ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
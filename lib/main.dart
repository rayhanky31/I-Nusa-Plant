// @dart=2.9
import 'package:Coditor/detaiil/detail_andong.dart';
import 'package:Coditor/detaiil/detail_bandotan.dart';
import 'package:Coditor/detaiil/detail_betadin.dart';
import 'package:Coditor/detaiil/detail_cocor.dart';
import 'package:Coditor/detaiil/detail_insulin.dart';
import 'package:Coditor/detaiil/detail_kecubung.dart';
import 'package:Coditor/detaiil/detail_keji.dart';
import 'package:Coditor/detaiil/detail_kembang.dart';
import 'package:Coditor/detaiil/detail_kitolod.dart';
import 'package:Coditor/detaiil/detail_mengkudu.dart';
import 'package:Coditor/detaiil/detail_pacarkuku.dart';
import 'package:Coditor/detaiil/detail_pandan.dart';
import 'package:Coditor/detaiil/detail_pepaya.dart';
import 'package:Coditor/detaiil/detail_sambiloto.dart';
import 'package:Coditor/detaiil/detail_sembung.dart';
import 'package:Coditor/detaiil/detail_sepuding.dart';
import 'package:Coditor/detaiil/detail_sirihhijau.dart';
import 'package:Coditor/detaiil/detail_sirihmerah.dart';
import 'package:Coditor/detaiil/detail_sirsak.dart';

import 'about.dart';
import 'package:flutter/material.dart';
import 'deteksi.dart';
import 'home.dart';
import 'about.dart';
import 'splash.dart';
import 'detaiil/detail_jarak.dart';
import 'package:splashscreen/splashscreen.dart';
import 'splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MECICINAL',
        home: MySplash(),
        theme:
            ThemeData(primaryColor: Color(0xFF497868), fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        routes: {
          // '/home': (context) => Home(),
          // '/how': (context) => How(),
          // '/about': (context) => About(),
          // '/cegah_hawar': (context) => CegahHawar(),
          '/detail_jarak': (context) => JarakDetail(),
          '/detail_pepaya': (context) => PepayaDetail(),
          '/detail_sambi': (context) => SambilotoDetail(),
          '/detail_sepuding': (context) => SepudingDetail(),
          '/detail_keji': (context) => KejiDetail(),
          '/detail_sirsak': (context) => SirsakDetail(),
          '/detail_bandotan': (context) => BandotanDetail(),
          '/detail_sembung': (context) => SembungDetail(),
          '/detail_insulin': (context) => InsulinDetail(),
          '/detail_kitolod': (context) => KitolodDetail(),

          '/detail_cocor': (context) => CocorDetail(),
          '/detail_betadin': (context) => BetadinDetail(),
          '/detail_andong': (context) => AndongDetail(),
          '/detail_sirihmerah': (context) => SirihMerahDetail(),
          '/detail_sirihhijau': (context) => SirihHijauDetail(),
          '/detail_mengkudu': (context) => MengkuduDetail(),
          '/detail_kecubung': (context) => KecubungDetail(),
          '/detail_pacarkuku': (context) => PacarDetail(),
          '/detail_kembang': (context) => KembangDetail(),
          '/detail_pandan': (context) => PandanDetail(),
        });
  }
}

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Sahabat Sehat',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Selamat datang di I-NusaPlant',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            // height: 10,
            // width: 10,
            padding: const EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            child: Text(
              "Dashboard",
              style: TextStyle(
                  color: Color.fromARGB(156, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            // color: Colors.green,
          ),
          SizedBox(height: .1),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => How(),
                        ),
                      );
                    },
                    child: itemDashboard(
                      'Home',
                      Icons.lightbulb_circle,
                      Colors.white, // Warna untuk item Home
                      'Informasi Cara Menggunakan Aplikasi',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                    },
                    child: itemDashboard(
                      'Deteksi',
                      Icons.search,
                      Colors.white, // Warna untuk item Deteksi
                      'Tools Untuk Deteksi Tanaman Obat',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => About(),
                      ));
                    },
                    child: itemDashboard(
                      'About',
                      Icons.info,
                      Colors.white, // Warna untuk item About
                      'Tentang Aplikasi Tanaman Obat',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemDashboard(
    String title,
    IconData iconData,
    Color background,
    String description,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Color(0xFF497868),
            size: 40,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF497868),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String itemName;
  final String itemDescription;

  const DetailScreen(this.itemName, this.itemDescription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah halaman detail untuk $itemName',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              'Deskripsi: $itemDescription',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


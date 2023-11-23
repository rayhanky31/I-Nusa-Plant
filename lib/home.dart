// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';

class How extends StatefulWidget {
  @override
  _HowState createState() => _HowState();
}

class _HowState extends State<How> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Home',
          style: const TextStyle(
              fontSize: 18, fontFamily: 'Oxygen', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF497868),
        elevation: 0.0, // Menghilangkan shadow dari AppBar
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 30, bottom: 20, left: 40, right: 40),
                width: 250,
                height: 250,
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(),
                child: Container(
                  //color: Colors.white,
                  // width: 100,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/iconhow.png',
                        width: 230,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xff007867),
                          border: Border.all(
                            color: Color.fromARGB(255, 225, 233, 219),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          //color: Colors.red,
                          child: Text(
                            "Cara Menggunakan Aplikasi",
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    HowToUseStep(
                      stepNumber: '1',
                      stepText: 'Pilih Menu Deteksi Pada Dasbaoard',
                    ),
                    SizedBox(height: 10),
                    HowToUseStep(
                      stepNumber: '2',
                      stepText:
                          'Lalu Pilih Akses Kamera Ataupun Galeri Perangkat Anda',
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

class HowToUseStep extends StatelessWidget {
  final String stepNumber;
  final String stepText;

  const HowToUseStep({
    required this.stepNumber,
    required this.stepText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Langkah - $stepNumber',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Oxygen',
            ),
          ),
          Text(
            stepText,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Oxygen',
            ),
          ),
        ],
      ),
    );
  }
}

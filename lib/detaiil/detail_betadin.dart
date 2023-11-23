import 'package:flutter/material.dart';

class BetadinDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Persiapan Ramuan: Ambil beberapa daun Betadine segar.",
    "Pencucian: Cuci daun Betadine dengan bersih di bawah air mengalir.",
    "Penghancuran: Tumbuk atau hancurkan daun Betadine hingga menjadi pasta dengan menggunakan alat yang sesuai.",
    "Aplikasi: Oleskan pasta daun Betadine yang sudah dihancurkan secara tipis pada area yang terkena luka atau peradangan kulit.",
    "Pengikatan: Bungkus area yang diobati dengan kain bersih atau perban steril, jika diperlukan.",
    "Pemantauan: Ganti aplikasi setiap beberapa jam sesuai kebutuhan dan pantau perkembangan luka atau peradangan.",
    "Konsultasi Medis: Jika masalah kulit atau luka serius, segera konsultasikan dengan profesional medis.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Deteksi',
          style: const TextStyle(
              fontSize: 18, fontFamily: 'Oxygen', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF497868),
        elevation: 0.0, // Menghilangkan shadow dari AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/obat/15_Betadin.png',
                      width: 280,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              //color: Colors.red,
                              child: Text(
                                "Jatropha multifida L.(Betadine)",
                                style: TextStyle(
                                    // fontFamily: 'Oxygen',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "Betadine, atau Jatropha multifida L., adalah tanaman yang memiliki manfaat kesehatan penting. Daunnya mengandung sifat antiinflamasi yang mengurangi peradangan pada kulit dan senyawa antibakteri yang melawan infeksi bakteri pada luka atau kulit. Ini menjadikan Betadine digunakan dalam pengobatan tradisional untuk masalah kulit seperti luka, memar, atau gangguan kulit ringan.",
                            style: TextStyle(
                              fontFamily: 'Oxygen',
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              //color: Colors.red,
                              child: Text(
                                "Cara Penggunaan",
                                style: TextStyle(
                                    // fontFamily: 'Oxygen',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        buildNumberedList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumberedList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: preventionSteps.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 0, 79, 86),
            child: Text(
              (index + 1).toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            preventionSteps[index],
            style: TextStyle(
              fontFamily: 'Oxygen',
              fontSize: 15,
            ),
            textAlign: TextAlign.justify,
          ),
        );
      },
    );
  }
}

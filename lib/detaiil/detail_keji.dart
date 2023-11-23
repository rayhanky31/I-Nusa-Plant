import 'package:flutter/material.dart';

class KejiDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Teh Herba: Salah satu cara yang paling umum untuk menggunakan Keji Beling adalah dengan membuat teh herba. Cuci daun Keji Beling yang segar, rebus dalam air panas, dan minum sebagai teh.",
    "Ekstrak Cair: Anda juga dapat menemukan ekstrak cair Keji Beling di toko obat herbal. Ikuti petunjuk dosis yang diberikan pada kemasan.",
    "Suplemen: Keji Beling tersedia dalam bentuk suplemen dalam kapsul atau tablet. Konsumsi sesuai dengan petunjuk dosis yang tertera pada kemasan.",
    "Salad dan Makanan: Daun Keji Beling yang segar bisa ditambahkan ke dalam salad atau makanan sebagai bahan penyedap.",
    "Obat Kumur: Untuk menyegarkan napas, Anda dapat menggunakan air rebusan daun Keji Beling sebagai obat kumur.",
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
                      'assets/obat/19_KejiBeling.png',
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
                                "Strobilanthes crispa Blume(Keji Beling)",
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
                            "Keji Beling (Strobilanthes crispa Blume) adalah tanaman herbal kaya manfaat. Daunnya mengandung antioksidan, anti-inflamasi, dan dapat membantu mengendalikan kadar gula darah. Tanaman ini juga baik untuk kesehatan ginjal, menyegarkan napas, dan digunakan dalam pengobatan tradisional.",
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

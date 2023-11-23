import 'package:flutter/material.dart';

class PepayaDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Infus Daun Pepaya: Daun pepaya segar atau kering dapat dijadikan infus. Rendam beberapa lembar daun dalam air panas, biarkan beberapa menit, lalu saring. Minum sebagai teh untuk mendukung pencernaan",
    "Ekstrak Daun Pepaya: Ekstrak daun pepaya dapat digunakan dalam bentuk suplemen makanan atau obat-obatan yang diresepkan oleh profesional kesehatan.",
    "Balutan Daun Pepaya: Untuk mempercepat penyembuhan luka, gunakan daun pepaya yang ditumbuk sebagai balutan pada area yang terluka.",
    "Kulit Daun Pepaya: Kulit daun pepaya dapat digunakan sebagai scrub alami untuk membersihkan kulit wajah.",
    "Konsumsi dalam Makanan: Daun pepaya segar dapat dicincang dan ditambahkan ke masakan sebagai bumbu atau campuran sayuran."
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
                      'assets/obat/3_Pepaya.jpg',
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
                                "Carica papaya L.(Pepaya)",
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
                            "Daun pepaya memiliki beragam manfaat. Mengandung enzim papain untuk pencernaan yang sehat, memiliki sifat antiinflamasi untuk meredakan peradangan, membantu detoksifikasi tubuh, menurunkan kolesterol, dan mendukung penyembuhan luka. Daun pepaya adalah bagian dari tanaman pepaya yang serbaguna untuk kesehatan.",
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

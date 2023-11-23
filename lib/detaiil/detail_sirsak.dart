import 'package:flutter/material.dart';

class SirsakDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Teh Daun Sirsak: Rebus beberapa lembar daun sirsak segar dalam air hingga mendidih, lalu saring dan minum sebagai teh. Ini dapat membantu sebagai minuman sehat sehari-hari.",
    "Suplemen Herbal: Daun sirsak juga tersedia dalam bentuk suplemen herbal dalam kapsul atau ekstrak. Pastikan untuk mengikuti petunjuk dosis yang disarankan.",
    "Masker Wajah: Daun sirsak dapat dihancurkan menjadi pasta dan digunakan sebagai masker wajah alami untuk membantu mengatasi masalah kulit.",
    "Penggunaan Lain: Beberapa orang juga mengoleskan ekstrak daun sirsak secara topikal pada kulit untuk membantu meredakan gatal-gatal atau masalah kulit lainnya.",
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
                      'assets/obat/2_Sirsak2.jpg',
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
                                "Annona muricata L.(Sirsak)",
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
                            "Daun sirsak memiliki manfaat kesehatan yang signifikan. Kandungan tinggi antioksidan membantu melindungi sel-sel tubuh, meningkatkan sistem kekebalan, dan mengurangi peradangan. Studi awal menunjukkan potensi sirsak dalam menghambat pertumbuhan sel kanker, dan daun sirsak juga dapat membantu mengatur tekanan darah tinggi.",
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

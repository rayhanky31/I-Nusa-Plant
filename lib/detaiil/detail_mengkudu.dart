import 'package:flutter/material.dart';

class MengkuduDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Teh Mengkudu: Rebus daun mengkudu kering dalam air panas dan minum sebagai teh. Ini dapat membantu Anda mendapatkan manfaat kesehatan dari daun mengkudu.",
    "Suplemen: Daun mengkudu juga tersedia dalam bentuk suplemen, seperti kapsul atau ekstrak. Ikuti petunjuk dosis yang diberikan pada kemasan.",
    "Kulit Daun: Anda juga dapat mengonsumsi kulit daun mengkudu, baik dalam bentuk jus atau bubur. Pastikan untuk membersihkan kulit daun sebelum digunakan.",
    "Topikal: Beberapa orang menggunakan ekstrak daun mengkudu dalam produk perawatan kulit untuk mengatasi masalah kulit tertentu seperti jerawat atau luka bakar.",
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
                      'assets/obat/16_Mengkudu.png',
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
                                "Morinda citrifolia L.(Mengkudu)",
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
                            "Mengkudu (Morinda citrifolia L.) memiliki manfaat kesehatan yang luas, termasuk mendukung kesehatan jantung, melawan radikal bebas, meningkatkan sistem kekebalan tubuh, dan membantu menurunkan tekanan darah. Ini adalah tanaman yang memiliki potensi manfaat yang besar bagi kesehatan tubuh.",
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

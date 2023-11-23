import 'package:flutter/material.dart';

class InsulinDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Teh Daun Insulin: Rebus daun Insulin kering dalam air panas, lalu saring dan minum sebagai teh. Ini dapat membantu menurunkan kadar gula darah.",
    "Ekstrak Daun Insulin: Anda juga dapat menggunakan ekstrak daun Insulin yang telah diolah dalam bentuk suplemen, sesuai dengan petunjuk dosis yang disarankan oleh produsen.",
    "Perawatan Luka: Daun Insulin dapat dihaluskan dan digunakan sebagai obat luar untuk merawat luka atau peradangan kulit.",
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
                      'assets/obat/20_Insulin.png',
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
                                "Tithonia diversifolia(Insulin)",
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
                            "Daun Insulin memiliki sejumlah manfaat kesehatan yang signifikan. Selain sifat hipoglikemik yang dapat membantu menurunkan kadar gula darah, daun ini juga mengandung senyawa antiinflamasi yang meredakan peradangan dalam tubuh. Terlebih lagi, kandungan antioksidan alami dalam daun Insulin berperan dalam melindungi sel-sel tubuh dari kerusakan yang disebabkan oleh radikal bebas. Kombinasi manfaat-manfaat ini menjadikan Insulin sebagai tanaman yang berpotensi bermanfaat, terutama bagi penderita diabetes dan dalam perawatan kesehatan secara umum.",
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

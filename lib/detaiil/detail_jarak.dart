import 'package:flutter/material.dart';

class JarakDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Ekstraksi Minyak: Biji jarak dikeringkan dan dihancurkan menjadi bubuk. Kemudian, bubuk biji direndam dalam pelarut organik seperti heksana atau metanol untuk menghasilkan minyak jarak. Minyak ini dapat digunakan dalam berbagai aplikasi, termasuk sebagai bahan bakar biodiesel.",
    "Penggunaan sebagai Pupuk: Daun jarak yang dikeringkan dapat digunakan sebagai pupuk organik. Mereka dapat dicampur dengan tanah atau diolah menjadi pupuk kompos",
    "Penggunaan sebagai Obat Tradisional: Untuk pengobatan tradisional, daun jarak dapat dihancurkan dan jusnya dapat diaplikasikan pada kulit yang terkena masalah seperti bisul atau kutil. Perlu diingat bahwa penggunaan obat tradisional harus hati-hati dan sebaiknya berkonsultasi dengan tenaga medis terkait."
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
                      'assets/obat/6_jarak.jpg',
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
                                "Jatropha curcas L (Jarak)",
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
                            "Daun jarak adalah bagian dari tanaman daun jarak yang memiliki beragam manfaat. Minyak jarak yang diekstraksi dari bijinya digunakan dalam biodiesel, sabun, dan perawatan kulit. Daunnya bisa jadi pupuk organik yang meningkatkan kualitas tanah, serta digunakan dalam pengobatan tradisional untuk masalah kulit seperti bisul dan kutil. Tanaman daun jarak memiliki daun yang khas dan biji yang mengandung minyak berharga.",
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

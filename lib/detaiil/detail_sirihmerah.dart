import 'package:flutter/material.dart';

class SirihMerahDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Obat Kumur: Rebus daun sirih merah dalam air panas, biarkan dingin, lalu gunakan sebagai obat kumur untuk menjaga kesehatan mulut.",
    "Pembalut Herbal: Bisa digunakan sebagai pembalut herbal dengan membungkus daun sirih merah dalam kain bersih dan digunakan seperti pembalut biasa.",
    "Minuman Herbal: Membuat infus dengan merebus daun sirih merah dan meminumnya sebagai minuman herbal.",
    "Bahan Masker Wajah: Mencampurkan daun sirih merah yang dihaluskan dengan air mawar atau air lemon dan menggunakannya sebagai masker wajah.",
    "Salep atau Krim: Membuat salep atau krim dari ekstrak daun sirih merah dan menggunakannya untuk mengobati luka atau masalah kulit.",
    "Teh Herbal: Membuat teh herbal dengan daun sirih merah kering, yang dapat diminum untuk manfaat kesehatan.",
    "Campuran Mandi: Menambahkan air rebusan daun sirih merah ke dalam air mandi untuk perawatan kulit.",
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
                      'assets/obat/18_SirihMerah.png',
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
                                "Piper crocatum Ruiz et Pav(Sirih Merah)",
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
                            "Sirih Merah (Piper crocatum Ruiz et Pav) memiliki beragam manfaat kesehatan, termasuk sebagai antioksidan, antiinflamasi, antimikroba, penyembuh luka, perawatan kulit, perawatan mulut, dan penyegar napas. Daunnya kaya akan senyawa antioksidan, membantu meredakan peradangan, melawan infeksi, mempercepat penyembuhan luka, dan berguna dalam perawatan kulit, mulut, serta untuk menyegarkan napas. Dengan manfaat yang begitu beragam, sirih merah merupakan tanaman yang berharga dalam perawatan kesehatan dan kecantikan.",
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

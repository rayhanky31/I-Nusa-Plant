import 'package:flutter/material.dart';

class KecubungDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Konsultasi dengan Ahli Herbal: Konsultasikan penggunaan kecubung dengan seorang ahli herbal atau profesional kesehatan terlebih dahulu, karena tanaman ini dapat berbahaya jika tidak digunakan dengan benar.",
    "Infus Daun Kecubung: Daun kecubung bisa direbus untuk membuat infus. Anda bisa menambahkan daun kecubung kering ke air panas dan kemudian meminumnya setelah mendingin. Penting untuk mengikuti dosis yang tepat yang direkomendasikan oleh ahli herbal.",
    "Minyak Esensial: Minyak esensial dari kecubung dapat digunakan dalam aromaterapi atau pijatan untuk efek sedatif. Namun, penggunaan minyak esensial harus dilakukan dengan hati-hati dan diencerkan dengan minyak pembawa sebelum digunakan pada kulit.",
    "Perhatikan Efek Samping: Penting untuk mengikuti dosis yang benar dan memperhatikan efek samping potensial, seperti halusinasi, gangguan penglihatan, dan gejala beracun lainnya. Jika terjadi reaksi negatif, segera hentikan penggunaan dan cari bantuan medis.",
    "Waspadai Keracunan: Kecubung mengandung senyawa yang beracun dan bisa sangat berbahaya jika dikonsumsi dalam jumlah besar. Selalu berhati-hati dan jangan pernah mengonsumsinya tanpa pengawasan yang tepat.",
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
                      'assets/obat/4_Kecubung.jpg',
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
                                "Datura metal(Kecubung)",
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
                            "Kecubung (Datura metel) digunakan dalam pengobatan tradisional untuk masalah seperti gangguan pernapasan, rematik, dan nyeri otot. Daunnya juga memiliki efek analgesik yang meredakan nyeri, sementara beberapa jenis kecubung dapat digunakan sebagai sedatif untuk mengatasi gangguan tidur atau kecemasan. Penggunaan kecubung harus hati-hati karena potensi beracunnya.",
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

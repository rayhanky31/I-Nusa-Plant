import 'package:flutter/material.dart';

class SembungDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Minuman Herbal: Anda dapat membuat infus dengan merebus daun Sembung kering dalam air. Saring dan minum sebagai minuman herbal. Ini dapat membantu meredakan peradangan dan memberikan manfaat kesehatan.",
    "Pengobatan Luka: Daun Sembung yang dihancurkan dapat ditempelkan langsung ke luka untuk mempercepat penyembuhan dan mencegah infeksi.",
    "Minyak Herbal: Anda juga dapat membuat minyak herbal dengan merendam daun Sembung dalam minyak sayur yang bersih. Minyak ini dapat digunakan untuk menggosok atau memijat area yang sakit.",
    "Pengobatan Tradisional: Ikuti pedoman pengobatan tradisional yang relevan dengan budaya Anda, jika ada, untuk mengambil manfaat dari daun Sembung.",
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
                      'assets/obat/11_Sembung.png',
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
                                "Blumea balsamifera(Sembung)",
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
                            "Sembung (Blumea balsamifera) memiliki beragam manfaat kesehatan yang signifikan. Daun Sembung memiliki sifat antiinflamasi yang membantu meredakan peradangan dalam tubuh, serta sifat antibakteri yang melawan infeksi bakteri. Selain itu, daun Sembung digunakan untuk merawat luka dan mempercepat proses penyembuhan. Di beberapa budaya, tanaman ini telah lama digunakan dalam pengobatan tradisional untuk mengatasi berbagai masalah kesehatan. Dengan sifat-sifat ini, Sembung menjadi komponen berharga dalam perawatan kesehatan tradisional.",
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

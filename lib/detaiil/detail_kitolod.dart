import 'package:flutter/material.dart';

class KitolodDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Minuman Herbal: Daun Kitolod dapat digunakan untuk membuat minuman herbal. Anda dapat mengeringkan daun Kitolod, kemudian merebusnya untuk membuat teh herbal. Teh ini dapat diminum untuk mendukung sistem kekebalan tubuh dan meredakan peradangan.",
    "Kompress: Daun Kitolod yang direbus dan dibiarkan dingin dapat digunakan sebagai kompres untuk mengurangi pembengkakan dan rasa sakit pada kulit yang terkena peradangan.",
    "Ekstrak Cair: Anda juga dapat mencari ekstrak cair dari daun Kitolod yang tersedia dalam bentuk suplemen herbal. Dalam hal ini, ikuti petunjuk penggunaan yang tertera pada label produk.",
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
                      'assets/obat/14_Kitolod.jpg',
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
                                "Isotoma longiflora(Kitolod)",
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
                            "Kitolod (Isotoma longiflora) adalah tanaman yang memiliki sejumlah manfaat kesehatan yang penting. Daun Kitolod mengandung senyawa antiinflamasi yang membantu mengurangi peradangan dalam tubuh, sifat antimikroba yang melawan infeksi bakteri dan mikroorganisme, serta antioksidan alami yang melindungi sel-sel tubuh dari kerusakan akibat radikal bebas. Di beberapa budaya, Kitolod juga digunakan dalam pengobatan tradisional untuk mengatasi masalah pencernaan, demam, dan gangguan pernapasan. Kombinasi manfaat-manfaat ini menjadikan Kitolod sebagai tanaman yang berpotensi bermanfaat dalam aspek kesehatan dan pengobatan tradisional.",
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

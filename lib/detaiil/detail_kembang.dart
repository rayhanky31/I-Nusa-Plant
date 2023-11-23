import 'package:flutter/material.dart';

class KembangDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Penggunaan Ekstrak: Bunga Kembang Sepatu dapat digunakan untuk membuat ekstrak yang dapat diminum sebagai teh. Cukup rebus beberapa bunga kering dalam air panas, biarkan mendidih sebentar, dan saring untuk membuat teh yang bisa diminum.",
    "Kompres: Untuk menyembuhkan luka atau mengatasi peradangan kulit, Anda dapat membuat kompres dengan ekstrak bunga Kembang Sepatu yang sudah disaring. Dengan lembut tempelkan kompres ini pada area yang terkena.",
    "Minyak Herbal: Anda juga dapat membuat minyak herbal dengan bunga Kembang Sepatu yang dicampur dengan minyak pembawa seperti minyak kelapa. Minyak ini dapat digunakan untuk perawatan rambut atau sebagai minyak pijat.",
    "Konsumsi Daun: Daun Kembang Sepatu dapat dimasukkan dalam makanan atau teh herbal. Daun segar atau kering dapat digunakan sesuai kebutuhan.",
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
                      'assets/obat/5_Kembang.jpg',
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
                                "Hibiscus rosasinensis(Kembang Sepatu)",
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
                            "Kembang Sepatu memiliki beragam manfaat, termasuk dalam pengobatan tradisional. Daunnya membantu dalam penyembuhan luka dan meredakan peradangan kulit. Bunga Kembang Sepatu digunakan untuk mengatasi batuk dan pilek, serta dapat membantu menurunkan tekanan darah tinggi. Selain itu, ekstrak bunganya berguna dalam perawatan rambut, memperkuat akar rambut, dan melawan radikal bebas dalam tubuh.",
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

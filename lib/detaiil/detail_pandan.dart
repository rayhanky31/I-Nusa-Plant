import 'package:flutter/material.dart';

class PandanDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Aroma dan Rasa: Daun kembang pandan dapat digunakan sebagai bahan pelengkap dalam makanan. Anda dapat menambahkan daun kembang pandan segar atau ekstraknya untuk memberikan aroma dan rasa yang khas.",
    "Minuman Herbal: Untuk efek penenang, daun kembang pandan dapat dijadikan teh atau infus. Caranya, rebus beberapa helai daun kembang pandan dalam air panas, biarkan hingga air berubah warna, lalu saring dan minum sebagai teh.",
    "Ekstrak: Anda juga dapat membuat ekstrak daun kembang pandan dengan menumbuk atau menggiling daun segar dan mencampurkannya dengan air. Ekstrak ini dapat digunakan dalam berbagai resep masakan dan minuman.",
    "Pengobatan Tradisional: Beberapa budaya menggunakan daun kembang pandan dalam pengobatan tradisional, terutama untuk mengatasi masalah pencernaan dan sebagai penenang.",
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
                      'assets/obat/17_Pandan.jpg',
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
                                "Pandanus Amaryllifolius Roxb(Pandan)",
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
                            "Pandan (Pandanus amaryllifolius Roxb) digunakan untuk memberikan aroma dan rasa unik pada makanan tradisional seperti nasi lemak dan kue, serta dalam minuman seperti teh. Selain itu, daun kembang pandan memiliki efek penenang yang membantu mengurangi stres ketika digunakan dalam minuman herbal. Kandungan antioksidannya juga berperan dalam menjaga kesehatan tubuh dengan melawan radikal bebas.",
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

import 'package:flutter/material.dart';

class BandotanDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Minuman Herbal: Daun Bandotan dapat diolah menjadi infus atau teh herbal dengan cara merebus daun segar atau kering dalam air panas. Minuman ini dapat diminum secara rutin untuk manfaat kesehatan.",
    "Kompres: Untuk mengurangi peradangan atau mengobati nyeri, Anda dapat menghancurkan daun Bandotan dan mengompres area yang terkena.",
    "Ekstrak: Anda juga dapat mengekstrak bahan aktif dari daun Bandotan untuk penggunaan dalam bentuk kapsul atau tetes.",
    "Pijat Herbal: Minyak yang dihasilkan dari tanaman ini dapat digunakan untuk pijat sebagai cara untuk meredakan nyeri otot atau sendi.",
    "Perawatan Kulit: Daun Bandotan dapat digunakan dalam produk perawatan kulit, seperti krim atau salep, untuk meredakan iritasi kulit atau peradangan.",
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
                      'assets/obat/10_Bandotan.png',
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
                                "Ageratum conyzoides L(Bandotan)",
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
                            "Bandotan (Ageratum conyzoides L.) adalah tanaman yang memiliki berbagai manfaat kesehatan. Daunnya memiliki sifat anti-inflamasi yang membantu mengurangi peradangan, sifat antibakteri yang melawan infeksi, serta kemampuan sebagai obat pereda nyeri ringan. Selain itu, Bandotan dikenal sebagai diuretik yang dapat meningkatkan produksi urine, dan juga memiliki sifat antipiretik yang membantu menurunkan demam. Kombinasi manfaat-manfaat ini menjadikan Bandotan sebagai tanaman yang serbaguna dalam pengobatan tradisional.",
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

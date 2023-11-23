import 'package:flutter/material.dart';

class AndongDetail extends StatelessWidget {
  final List<String> preventionSteps = [
    "Minuman Herbal: Daun Andong dapat digunakan untuk membuat minuman herbal. Rebus daun Andong kering dalam air panas, biarkan hingga air berubah warna, lalu saring dan minum sebagai teh.",
    "Kompres: Anda dapat menggiling daun segar Andong, lalu membuat kompres dengan pasta daun ini untuk membantu penyembuhan luka atau gigitan serangga.",
    "Konsumsi sebagai Sayuran: Daun Andong juga dapat dimasak dan dimakan sebagai sayuran. Merebus atau menumisnya bersama dengan bahan makanan lain adalah cara umum mengonsumsinya.",
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
                      'assets/obat/12_Andong.png',
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
                                "Cordyline fruticosa(Andong)",
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
                            "Andong, atau Cordyline fruticosa, adalah tanaman hias yang juga memiliki manfaat kesehatan. Daunnya kaya serat yang baik untuk pencernaan dan mencegah sembelit. Selain itu, mengandung antioksidan untuk melindungi tubuh dari kerusakan radikal bebas serta digunakan dalam pengobatan tradisional untuk penyembuhan luka ringan. Meskipun utamanya digunakan sebagai tanaman hias, Andong juga dapat memberikan manfaat kesehatan yang bermanfaat.",
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

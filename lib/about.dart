import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Aplikasi',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Oxygen',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF497868),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset(
                'assets/1024.png',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "I-NusaPlant",
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF497868),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Aplikasi Pendeteksi Tumbuhan Obat",
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 18,
                  color: Color(0xFF497868),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              SizedBox(height: 20),
              Text(
                "I-NusaPlant adalah aplikasi berbasis Machine Learning yang dirancang khusus untuk mendeteksi 20 jenis tanaman obat tertentu. Aplikasi ini membantu dalam mengidentifikasi tumbuhan obat yang terdaftar di bawah ini secara cepat dan akurat: \n\n1. Ageratum conyzoides L. (Bandotan)\n2. Blumea balsamifera (Sembung)\n3. Cordyline fruticosa (Andong)\n4. Graptophyllum pictum (Sepuding)\n5. Isotoma longiflora (Kitolod)\n6. Jatropha multifida L. (Betadine)\n7. Morinda citrifolia L. (Mengkudu)\n8. Pandanus Amaryllifolius Roxb (Pandan)\n9. Piper crocatum Ruiz et Pav (Sirih Merah)\n10. Strobilanthes crispa Blume (Keji Beling)\n11. Andrographis paniculata (Sambiloto)\n12. Tithonia diversifolia (Insulin)\n13. Annona muricata L. (Sirsak)\n14. Carica papaya L. (Pepaya)\n15. Datura metal (Kecubung)\n16. Hibiscus rosasinensis (Kembang Sepatu)\n17. Jatropha curcas L. (Jarak)\n18. Kalanchoe pinnata (Cocor Bebek)\n19. Lawsonia Inermis L. (Pacar Kuku)\n20. Piper betle (Sirih Hijau)\n\nAplikasi ini menggunakan teknologi Machine Learning untuk mengenali karakteristik khusus dari setiap tanaman obat ini, sehingga pengguna dapat dengan mudah mengidentifikasi tanaman obat yang mereka temui dalam kehidupan sehari-hari. I-NUSA Plant memberikan solusi yang praktis untuk membedakan tanaman obat dan memastikan penggunaan yang tepat dalam berbagai konteks medis dan herbal.",
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 120, 104),
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

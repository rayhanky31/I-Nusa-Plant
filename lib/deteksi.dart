import 'dart:io';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'detaiil/detail_jarak.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;
  late File _image;
  late List _output;
  final picker = ImagePicker();
  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 20,
      threshold: 0.75,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      _output = output!;
      _loading = false;
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
  }

  pickImage() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) return null;
    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  pickGalleryImage() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _image = File(image.path);
    });
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Deteksi',
          style: const TextStyle(
              fontSize: 18, fontFamily: 'Oxygen', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF497868),
        elevation: 0.0, // Menghilangkan shadow dari AppBar
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            // color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: _loading == false
                      ? null
                      : Container(
                          child: Column(
                            children: [
                              Container(
                                // color: Colors.amberAccent,
                                margin: const EdgeInsets.all(10),
                                height: MediaQuery.of(context).size.width * 0.4,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/takephoto.png',
                                    width: 230,
                                    height: 230,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: pickImage,
                                      child: Container(
                                        width: 250,
                                        height: 45,
                                        margin: const EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF497868),
                                          borderRadius:
                                              BorderRadius.circular(32),
                                        ),
                                        child: const Text(
                                          'AKSES KAMERA',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    GestureDetector(
                                      onTap: pickGalleryImage,
                                      child: Container(
                                        width: 250,
                                        height: 45,
                                        margin: const EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF497868),
                                          borderRadius:
                                              BorderRadius.circular(32),
                                        ),
                                        child: const Text(
                                          'PILIH DARI GALERI',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
              Container(
                child: Center(
                  child: _loading == true
                      ? null
                      : Container(
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: MediaQuery.of(context).size.width * 0.6,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.file(
                                    _image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              // ignore: unnecessary_null_comparison
                              _output != null && _output.isNotEmpty
                                  ? Text(
                                      '${_output[0]['label']}',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 35, 7, 7),
                                        fontSize: 18,
                                        fontFamily: 'Staatliches',
                                      ),
                                    )
                                  : Container(),
                              Container(
                                child: (_output.isNotEmpty &&
                                        _output[0]['label'] ==
                                            "Jatropha curcas L.(Jarak)")
                                    ? Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Center(
                                                child: Text(
                                                    "Jatropha curcas L., atau jarak, adalah tanaman yang bijinya menghasilkan minyak berharga, digunakan dalam biodiesel, sabun, dan perawatan kulit.Selain itu, daunnya bisa jadi pupuk organik untuk meningkatkan kualitas tanah.",
                                                    style: TextStyle(
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 12,
                                                    ),
                                                    textAlign:
                                                        TextAlign.center)),
                                          ),
                                          ButtonPenanggulangan(
                                            solusi: '/detail_jarak',
                                          )
                                        ],
                                      )
                                    : (_output.isNotEmpty &&
                                            _output[0]['label'] ==
                                                "Carica papaya L.(Pepaya)")
                                        ? Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(10),
                                                child: Center(
                                                  child: Text(
                                                      "Carica papaya L., atau pepaya, adalah tanaman tropis dengan buah oranye atau kuning yang lezat dan bergizi. Buah ini memiliki daging manis dan biji yang bisa dimakan, sering digunakan dalam hidangan makanan dan minuman.",
                                                      style: TextStyle(
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 12,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center),
                                                ),
                                              ),
                                              ButtonPenanggulangan(
                                                  solusi: '/detail_pepaya')
                                            ],
                                          )
                                        : (_output.isNotEmpty &&
                                                _output[0]['label'] ==
                                                    "Andrographis paniculata(Sambiloto)")
                                            ? Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Center(
                                                      child: Text(
                                                          "Andrographis paniculata, yang lebih dikenal dengan nama Sambiloto, adalah sebuah tanaman herbal yang tumbuh di berbagai wilayah tropis dan subtropis.",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Oxygen',
                                                            fontSize: 12,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center),
                                                    ),
                                                  ),
                                                  ButtonPenanggulangan(
                                                      solusi: '/detail_sambi')
                                                ],
                                              )
                                            : (_output.isNotEmpty &&
                                                    _output[0]['label'] ==
                                                        "Graptophyllum pictum(Sepuding)")
                                                ? Column(
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: Center(
                                                          child: Text(
                                                              "Graptophyllum pictum, atau Sepuding, adalah tanaman hias berdaun berwarna-warni asal Asia Tenggara, seperti Indonesia dan Malaysia. Daunnya yang indah membuatnya populer dalam taman-taman dan pekarangan.",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Oxygen',
                                                                fontSize: 12,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center),
                                                        ),
                                                      ),
                                                      ButtonPenanggulangan(
                                                          solusi:
                                                              '/detail_sepuding')
                                                    ],
                                                  )
                                                //5 Keji Beling
                                                : (_output.isNotEmpty &&
                                                        _output[0]['label'] ==
                                                            "Strobilanthes crispa Blume(Keji Beling)")
                                                    ? Column(
                                                        children: [
                                                          Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: Center(
                                                              child: Text(
                                                                  "Keji Beling (Strobilanthes crispa Blume) adalah tanaman herbal yang memiliki beragam manfaat kesehatan. Daunnya biasanya digunakan dalam pengobatan tradisional di berbagai budaya.",
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        'Oxygen',
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center),
                                                            ),
                                                          ),
                                                          ButtonPenanggulangan(
                                                              solusi:
                                                                  '/detail_keji')
                                                        ],
                                                      )
                                                    //6_Sirsak
                                                    : (_output.isNotEmpty &&
                                                            _output[0]
                                                                    ['label'] ==
                                                                "Annona muricata L.(Sirsak)")
                                                        ? Column(
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10),
                                                                child: Center(
                                                                  child: Text(
                                                                      "Annona muricata L., yang lebih dikenal sebagai Sirsak, adalah tanaman tropis yang terkenal karena buahnya yang besar dengan kulit berduri dan daging buah yang lezat.",
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            'Oxygen',
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center),
                                                                ),
                                                              ),
                                                              ButtonPenanggulangan(
                                                                  solusi:
                                                                      '/detail_sirsak')
                                                            ],
                                                          )
                                                        //7 Bandotan
                                                        : (_output.isNotEmpty &&
                                                                _output[0]['label'] ==
                                                                    "Ageratum conyzoides L(Bandotan)")
                                                            ? Column(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            10),
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          "Bandotan (Ageratum conyzoides L.) adalah tanaman herba yang ditemukan di berbagai wilayah tropis dan subtropis di seluruh dunia.",
                                                                          style:
                                                                              TextStyle(
                                                                            fontFamily:
                                                                                'Oxygen',
                                                                            fontSize:
                                                                                12,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center),
                                                                    ),
                                                                  ),
                                                                  ButtonPenanggulangan(
                                                                      solusi:
                                                                          '/detail_bandotan')
                                                                ],
                                                              )
                                                            //8. Sembung
                                                            : (_output.isNotEmpty &&
                                                                    _output[0][
                                                                            'label'] ==
                                                                        "Blumea balsamifera(Sembung)")
                                                                ? Column(
                                                                    children: [
                                                                      Container(
                                                                        padding:
                                                                            EdgeInsets.all(10),
                                                                        child:
                                                                            Center(
                                                                          child: Text(
                                                                              "Blumea balsamifera, atau Sembung, adalah tanaman asli Asia Tenggara dan wilayah Pasifik yang terkenal karena aromanya yang harum. Digunakan dalam pengobatan tradisional dan penggunaan aromatik.",
                                                                              style: TextStyle(
                                                                                fontFamily: 'Oxygen',
                                                                                fontSize: 12,
                                                                              ),
                                                                              textAlign: TextAlign.center),
                                                                        ),
                                                                      ),
                                                                      ButtonPenanggulangan(
                                                                          solusi:
                                                                              '/detail_sembung')
                                                                    ],
                                                                  )
                                                                //9. Insulin
                                                                : (_output.isNotEmpty &&
                                                                        _output[0]['label'] ==
                                                                            "Tithonia diversifolia(Insulin)")
                                                                    ? Column(
                                                                        children: [
                                                                          Container(
                                                                            padding:
                                                                                EdgeInsets.all(10),
                                                                            child:
                                                                                Center(
                                                                              child: Text("Tithonia diversifolia, atau Mexican Sunflower atau Nitrogen Bush, adalah tanaman asli Amerika Tengah dan Meksiko, tetapi tidak ada kaitannya dengan produksi insulin atau pengobatan diabetes.",
                                                                                  style: TextStyle(
                                                                                    fontFamily: 'Oxygen',
                                                                                    fontSize: 12,
                                                                                  ),
                                                                                  textAlign: TextAlign.center),
                                                                            ),
                                                                          ),
                                                                          ButtonPenanggulangan(
                                                                              solusi: '/detail_insulin')
                                                                        ],
                                                                      )
                                                                    //10. Kitolod
                                                                    : (_output.isNotEmpty &&
                                                                            _output[0]['label'] == "Isotoma longiflora(Kitolod)")
                                                                        ? Column(
                                                                            children: [
                                                                              Container(
                                                                                padding: EdgeInsets.all(10),
                                                                                child: Center(
                                                                                  child: Text("Isotoma longiflora, yang dikenal dengan nama Kitolod, adalah tanaman hias yang berasal dari Australia. Tanaman ini memiliki bunga-bunga berwarna biru muda atau ungu yang indah dan daun hijau yang rimbun.",
                                                                                      style: TextStyle(
                                                                                        fontFamily: 'Oxygen',
                                                                                        fontSize: 12,
                                                                                      ),
                                                                                      textAlign: TextAlign.center),
                                                                                ),
                                                                              ),
                                                                              ButtonPenanggulangan(solusi: '/detail_kitolod')
                                                                            ],
                                                                          )
                                                                        //11. Cocor
                                                                        : (_output.isNotEmpty && _output[0]['label'] == "Kalanchoe pinnata(Cocor Bebek)")
                                                                            ? Column(
                                                                                children: [
                                                                                  Container(
                                                                                    padding: EdgeInsets.all(10),
                                                                                    child: Center(
                                                                                      child: Text("Kalanchoe pinnata, atau Cocor Bebek, adalah tanaman sukulen asli Madagaskar yang terkenal dengan daun tebalnya. Tanaman ini sering digunakan dalam pengobatan tradisional di berbagai budaya.",
                                                                                          style: TextStyle(
                                                                                            fontFamily: 'Oxygen',
                                                                                            fontSize: 12,
                                                                                          ),
                                                                                          textAlign: TextAlign.center),
                                                                                    ),
                                                                                  ),
                                                                                  ButtonPenanggulangan(solusi: '/detail_cocor')
                                                                                ],
                                                                              )
                                                                            //12. Betadin
                                                                            : (_output.isNotEmpty && _output[0]['label'] == "Jatropha multifida L.(Betadine)")
                                                                                ? Column(
                                                                                    children: [
                                                                                      Container(
                                                                                        padding: EdgeInsets.all(10),
                                                                                        child: Center(
                                                                                          child: Text("Jatropha multifida L., atau Betadine, tanaman Amerika Tengah dan Selatan dengan daun menarik dan bunga merah. Meskipun dikenal sebagai Betadine, bukan antiseptik. Digunakan dalam pengobatan tradisional dan sebagai tanaman hias.",
                                                                                              style: TextStyle(
                                                                                                fontFamily: 'Oxygen',
                                                                                                fontSize: 12,
                                                                                              ),
                                                                                              textAlign: TextAlign.center),
                                                                                        ),
                                                                                      ),
                                                                                      ButtonPenanggulangan(solusi: '/detail_betadin')
                                                                                    ],
                                                                                  )
                                                                                //13. Andong
                                                                                : (_output.isNotEmpty && _output[0]['label'] == "Cordyline fruticosa(Andong)")
                                                                                    ? Column(
                                                                                        children: [
                                                                                          Container(
                                                                                            padding: EdgeInsets.all(10),
                                                                                            child: Center(
                                                                                              child: Text("Cordyline fruticosa, atau Andong, adalah tanaman hias asli Pasifik dan Asia Tenggara yang terkenal karena daun-daunnya yang berwarna-warni. Digunakan untuk tujuan dekoratif dan tidak memiliki manfaat medis atau kuliner yang signifikan",
                                                                                                  style: TextStyle(
                                                                                                    fontFamily: 'Oxygen',
                                                                                                    fontSize: 12,
                                                                                                  ),
                                                                                                  textAlign: TextAlign.center),
                                                                                            ),
                                                                                          ),
                                                                                          ButtonPenanggulangan(solusi: '/detail_andong')
                                                                                        ],
                                                                                      )
                                                                                    //14. Sirih Merah
                                                                                    : (_output.isNotEmpty && _output[0]['label'] == "Piper crocatum Ruiz et Pav(Sirih Merah)")
                                                                                        ? Column(
                                                                                            children: [
                                                                                              Container(
                                                                                                padding: EdgeInsets.all(10),
                                                                                                child: Center(
                                                                                                  child: Text("Sirih Merah (Piper crocatum Ruiz et Pav) adalah tanaman merambat dengan daun berbentuk hati merah cerah. Digunakan dalam pengobatan tradisional untuk masalah pencernaan, demam, dan sakit tenggorokan, serta sebagai tanaman hias yang memiliki nilai budaya.",
                                                                                                      style: TextStyle(
                                                                                                        fontFamily: 'Oxygen',
                                                                                                        fontSize: 12,
                                                                                                      ),
                                                                                                      textAlign: TextAlign.center),
                                                                                                ),
                                                                                              ),
                                                                                              ButtonPenanggulangan(solusi: '/detail_sirihmerah')
                                                                                            ],
                                                                                          )
                                                                                        //15. Sirih Hijau
                                                                                        : (_output.isNotEmpty && _output[0]['label'] == "Piper betle(Sirih hijau)")
                                                                                            ? Column(
                                                                                                children: [
                                                                                                  Container(
                                                                                                    padding: EdgeInsets.all(10),
                                                                                                    child: Center(
                                                                                                      child: Text("Piper betle, atau Sirih Hijau, adalah tanaman merambat dari Asia Tenggara yang terkenal dalam praktik kesehatan tradisional dan upacara adat. Daunnya digunakan untuk merawat mulut, menyegarkan nafas, dan memiliki peran penting dalam budaya regional.",
                                                                                                          style: TextStyle(
                                                                                                            fontFamily: 'Oxygen',
                                                                                                            fontSize: 12,
                                                                                                          ),
                                                                                                          textAlign: TextAlign.center),
                                                                                                    ),
                                                                                                  ),
                                                                                                  ButtonPenanggulangan(solusi: '/detail_sirihhijau')
                                                                                                ],
                                                                                              )
                                                                                            //16. Mengkudu
                                                                                            : (_output.isNotEmpty && _output[0]['label'] == "Morinda citrifolia L.(Mengkudu)")
                                                                                                ? Column(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        padding: EdgeInsets.all(10),
                                                                                                        child: Center(
                                                                                                          child: Text("Mengkudu (Morinda citrifolia L.), juga dikenal sebagai Noni, adalah tanaman asli Pasifik Selatan dan Asia Tenggara. Buahnya digunakan dalam pengobatan tradisional dan menjadi bahan dalam produk kesehatan. Potensi manfaatnya sedang diteliti secara ilmiah.",
                                                                                                              style: TextStyle(
                                                                                                                fontFamily: 'Oxygen',
                                                                                                                fontSize: 12,
                                                                                                              ),
                                                                                                              textAlign: TextAlign.center),
                                                                                                        ),
                                                                                                      ),
                                                                                                      ButtonPenanggulangan(solusi: '/detail_mengkudu')
                                                                                                    ],
                                                                                                  )
                                                                                                //17. Kecubung
                                                                                                : (_output.isNotEmpty && _output[0]['label'] == "Datura metal(Kecubung)")
                                                                                                    ? Column(
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            padding: EdgeInsets.all(10),
                                                                                                            child: Center(
                                                                                                              child: Text("Kecubung (Datura metel) adalah tanaman beracun berbunga dengan bunga lonceng yang berasal dari Asia Selatan dan Tenggara. Harus digunakan dengan sangat hati-hati karena semua bagian tanaman ini mengandung senyawa beracun.",
                                                                                                                  style: TextStyle(
                                                                                                                    fontFamily: 'Oxygen',
                                                                                                                    fontSize: 12,
                                                                                                                  ),
                                                                                                                  textAlign: TextAlign.center),
                                                                                                            ),
                                                                                                          ),
                                                                                                          ButtonPenanggulangan(solusi: '/detail_kecubung')
                                                                                                        ],
                                                                                                      )
                                                                                                    //18. Pacar Kuku
                                                                                                    : (_output.isNotEmpty && _output[0]['label'] == "Lawsonia Inermis L.(Pacar Kuku)")
                                                                                                        ? Column(
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                padding: EdgeInsets.all(10),
                                                                                                                child: Center(
                                                                                                                  child: Text("Pacar Kuku (Lawsonia inermis L.), atau Henna, adalah tanaman asal Afrika Utara, Timur Tengah, dan Asia Selatan. Daunnya digunakan untuk pasta henna dalam seni tubuh, dekorasi kulit, pewarnaan rambut, dan juga dalam pengobatan tradisional untuk merawat kulit dan rambut.",
                                                                                                                      style: TextStyle(
                                                                                                                        fontFamily: 'Oxygen',
                                                                                                                        fontSize: 12,
                                                                                                                      ),
                                                                                                                      textAlign: TextAlign.center),
                                                                                                                ),
                                                                                                              ),
                                                                                                              ButtonPenanggulangan(solusi: '/detail_pacarkuku')
                                                                                                            ],
                                                                                                          )
                                                                                                        //19 Kembang Sepatu
                                                                                                        : (_output.isNotEmpty && _output[0]['label'] == "Hibiscus rosasinensis(Kembang Sepatu)")
                                                                                                            ? Column(
                                                                                                                children: [
                                                                                                                  Container(
                                                                                                                    padding: EdgeInsets.all(10),
                                                                                                                    child: Center(
                                                                                                                      child: Text("Kembang Sepatu (Hibiscus rosa-sinensis) adalah tanaman hias berbunga asal Asia dengan bunga yang cantik. Selain digunakan untuk keindahan taman, Kembang Sepatu juga memiliki peran dalam pengobatan tradisional untuk beberapa masalah kesehatan seperti hipertensi dan gangguan pencernaan.",
                                                                                                                          style: TextStyle(
                                                                                                                            fontFamily: 'Oxygen',
                                                                                                                            fontSize: 12,
                                                                                                                          ),
                                                                                                                          textAlign: TextAlign.center),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  ButtonPenanggulangan(solusi: '/detail_kembang')
                                                                                                                ],
                                                                                                              )
                                                                                                            //20. Pandan
                                                                                                            : (_output.isNotEmpty && _output[0]['label'] == "Pandanus Amaryllifolius Roxb(Pandan)")
                                                                                                                ? Column(
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        padding: EdgeInsets.all(10),
                                                                                                                        child: Center(
                                                                                                                          child: Text("Pandan (Pandanus amaryllifolius Roxb) adalah tanaman tropis asli Asia Tenggara. Daunnya digunakan untuk memberikan aroma dan rasa unik pada masakan Asia Tenggara. Selain itu, pandan memiliki manfaat dalam pengobatan tradisional, terutama untuk meredakan demam dan masalah perut.",
                                                                                                                              style: TextStyle(
                                                                                                                                fontFamily: 'Oxygen',
                                                                                                                                fontSize: 12,
                                                                                                                              ),
                                                                                                                              textAlign: TextAlign.center),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      ButtonPenanggulangan(solusi: '/detail_pandan')
                                                                                                                    ],
                                                                                                                  )
                                                                                                                : Column(
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        padding: EdgeInsets.all(10),
                                                                                                                        child: Center(
                                                                                                                            child: Text("Tidak Terdefinisi, Coba Ulang",
                                                                                                                                style: TextStyle(
                                                                                                                                  fontFamily: 'Oxygen',
                                                                                                                                  fontSize: 12,
                                                                                                                                ),
                                                                                                                                textAlign: TextAlign.center)),
                                                                                                                      ),
                                                                                                                      SizedBox(
                                                                                                                        height: 10,
                                                                                                                      ),
                                                                                                                      ButtonReset()
                                                                                                                    ],
                                                                                                                  ),
                              ),
                              // Divider(
                              //   height: 25,
                              //   thickness: 0,
                              // ),
                            ],
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonPenanggulangan extends StatelessWidget {
  final String solusi;
  const ButtonPenanggulangan({
    Key? key,
    required this.solusi,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ButtonBar(
        mainAxisSize: MainAxisSize
            .min, // this will take space as minimum as posible(to center)
        children: <Widget>[
          Container(
              // margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: SizedBox(
                // width: 250,
                height: 45,
                child: ElevatedButton(
                  child: Text('DETAIL',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, solusi);
                  },
                ),
              )),
          ButtonReset()
        ],
      ),
    );
  }
}

class ButtonReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ButtonBar(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              // margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: SizedBox(
                // width: 250,
                height: 45,
                child: ElevatedButton(
                  child: Text('DASHBOARD',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}

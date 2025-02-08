import 'dart:math';

import 'package:flutter/material.dart';

class CekHodam extends StatefulWidget {
  const CekHodam({super.key});

  @override
  State<CekHodam> createState() => _CekHodamState();
}

class _CekHodamState extends State<CekHodam> {
  List<String> hodam = [
    "Kulkas Kosong",
    "Piring Pecah",
    "Koper Berat",
    "Topi Melorot",
    "Lem Super Lengket",
    "Keripik Garing",
    "Senter Mati",
    "Kue Kering",
    "Bantal Empuk",
    "Kendi Air",
    "Penggaris Melengkung",
    "Tali Jemuran",
    "Kancut Badak",
    "Rayap Gendut",
    "Pagar Besi",
    "Kunci Gembok",
    "LC Karaoke",
    "Cicak Kawin",
    "Cupang Betina",
    "Sundel Bolong",
    "Tuyul Kesandung",
    "Genderuwo TikTok",
    "Jin Susu Kental Manis",
    "Si Lontong Lumer",
    "Setan Payung Bocor",
    "Jin Es Krim Leleh",
    "Pocong Bersepeda",
    "Kuntilanak Selfie",
    "Tuyul Main PS5",
    "Batu Bata",
    "Remote TV",
    "Kompor Meledak",
    "Helm Nyasar",
    "Gitar Putus Senar",
    "Si Sate Klathak",
    "Genderuwo Tertawa",
    "Jin Penjual Cilok",
    "Setan Jualan Online",
    "Kuntilanak Kecanduan Kopi",
    "Pocong Nyanyi Dangdut",
    "Jin Martabak Telor",
    "Tuyul Kerja Part-Time",
    "Handuk Basah",
    "Kipas Rusak",
    "Jemuran Penuh",
    "Tisu Gulung",
    "Gelas Plastik",
    "Si Bakso Urat",
    "Setan Suka Drama Korea",
    "Genderuwo Nonton Netflix",
    "Jin Donat Kentang",
    "Kuntilanak Pake Kacamata",
    "Pocong Mainan Kucing",
    "Jin Peminum Boba",
    "Tuyul Bersepatu Roda",
    "Si Keripik Pedas",
    "Setan Kolektor Komik",
    "Genderuwo Pemain Basket",
    "Jin Sate Madura",
    "Kuntilanak Nge-Gym",
    "Pocong Ngantor",
    "Tuyul Jago Coding",
    "Si Pizza Keju",
    "Setan Pemilik Cafe",
    "Genderuwo Seniman",
    "Jin Coklat Batangan",
    "Kuntilanak Hobi Makeup",
    "Pocong Main TikTok",
    "Tuyul Kuliah Online",
    "Si Rambutan Manis",
    "Sendal Jepit",
    "Panci Gosong",
    "Guling Gembung",
    "Sarung Bantal",
    "Kaos Oblong",
    "Jin Kipas Angin",
    "Setan Pembeli Pulsa",
    "Kuntilanak Karaoke",
    "Pocong Joget",
    "Ember Bocor",
    "Celana Sobek",
    "Sepeda Tua",
    "Telepon Jadul",
    "Tas Plastik",
    "Kalender Bekas",
    "Pensil Inul",
    "Buku Kusut",
    "Korek Macet",
    "Mangkok Retak",
    "Lemari Penuh",
  ];
  String? selectedHodam;
  String? selectedJodoh;
  String? selectedResult;

  List<String> jodoh = [
    "Gacor",
    "Langgeng",
    "Cocok",
    "Tidak Cocok",
    "Berbahaya",
    "Anak nya jadi ustad",
    "Anaknya Durhaka",
    "Anaknya soleh"
  ];

  List<String> ramal = [
    "Kekayaan datang ketika kamu mulai memanfaatkan peluang yang ada di sekitarmu,",
    "Dalam waktu dekat, sebuah kesempatan besar akan membawa perubahan besar dalam finansialmu,",
    "Kesabaran dan usaha kerasmu akan membuahkan hasil yang lebih dari yang kamu bayangkan,",
    "Pintu kekayaan akan terbuka lebar setelah kamu berhenti ragu dan mulai melangkah dengan percaya diri,",
    "Rezeki akan mengalir deras, tetapi hanya jika kamu tetap menjaga hati yang penuh rasa syukur,",
    "Sumber daya yang kamu butuhkan akan datang pada saat yang tepat, membawa kemakmuran yang langgeng,",
    "Kekayaanmu tidak hanya berupa uang, tetapi juga kebijaksanaan dalam mengelola semua yang ada,",
    "Kesuksesan finansialmu semakin dekat, asalkan kamu tidak berhenti belajar dan beradaptasi,",
    "Ada peluang besar yang menantimu, dan keberanian untuk mengambilnya akan menentukan keberuntunganmu,",
    "Kekayaan sejati adalah hasil dari kerja keras dan kebaikan hati, keduanya akan membawamu menuju kesuksesan,",
  ];

  void showRandomHodam() {
    setState(() {
      selectedHodam = hodam[Random().nextInt(hodam.length)];
      selectedResult = selectedHodam;
    });
  }

  void showRandomJodoh() {
    setState(() {
      selectedJodoh = jodoh[Random().nextInt(jodoh.length)];
      selectedResult = selectedJodoh;
    });
  }

  void showRandomramal() {
    setState(() {
      selectedResult = ramal[Random().nextInt(ramal.length)];
    });
  }

  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 58, 92),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/nyiroro.jpg",
                ), // Path ke gambar
                fit: BoxFit.cover, // Agar gambar memenuhi seluruh layar
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Tap Layar = Akan Di Cek\n Caranya Tulis Nama Mu di Komentar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 800,
                    child: TextField(
                      controller: nameController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Nama',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.white,
                        )),
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: showRandomHodam,
                          child: Center(
                            child: Text(
                              "Cek Hodam",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: showRandomJodoh,
                          child: Center(
                            child: Text(
                              "Cek jodoh",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          onPressed: showRandomramal,
                          child: Center(
                            child: Text(
                              "Cek Sukses",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    nameController.text,
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 80,
                    ),
                  ),
                  if (selectedResult != null)
                    Text(
                      selectedResult!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

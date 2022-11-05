import 'package:flutter/material.dart';

import 'hesap.dart';

import 'model/model.dart';

class ResultPage extends StatelessWidget {
  final UserData user;
  const ResultPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Sayfası"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Boy : ${user.boy?.round()} cm , kilo : ${user.kilo?.round()}  kg",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              " Yapılan spor : ${user.yapilanSpor?.round()} gün ",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "İçilen sigara günlük : ${user.icilenSigara?.round()} adet",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Cinsiyet : ${user.seciliCinsiyet} ",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Beklenen sonuç : ${Hesap(user).hesaplama().round().toString()}  yıl",
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            child: Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: const Text(
                "GERİ DÖN",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: () {
              // Navigator.pop(
              //     //geri dön dediğinde  tekrardan default değerleri alması için Navigatoru bu şekilde kullandım : sayfayı tekrardan açar
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const YasamBeklentisi(),
              //     ));
              Navigator.pop(
                  context); //bu şekilde kullanımda ise son tercihleri nasıl ise ordan devam eder: sayfayı üstten kaldırır
            },
          ),
        )
      ]),
    );
  }
}

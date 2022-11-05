import 'package:flutter/material.dart';

import 'model/model.dart';
import 'result_page.dart';

class YasamBeklentisi extends StatefulWidget {
  const YasamBeklentisi({super.key});

  @override
  State<YasamBeklentisi> createState() => _YasamBeklentisiState();
}

class _YasamBeklentisiState extends State<YasamBeklentisi> {
  UserData users = UserData()
    ..boy
    ..kilo
    ..yapilanSpor
    ..icilenSigara
    ..seciliCinsiyet;

  final double _smallSize = 13;
  final double _largeSize = 20;
  String? seciliCinsiyet;
  double yapilanSpor = 0;
  double icilenSigara = 0;
  double boy = 170;
  double kilo = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BEKLENEN YAŞAM SÜRESİ"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Text(
                        "BOY",
                        style: TextStyle(fontSize: _largeSize),
                      ),
                      Text(
                        boy.round().toString(),
                        style: const TextStyle(
                            fontSize: 20, color: Colors.lightBlue),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: ButtonTheme(
                                padding: const EdgeInsets.all(10),
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy++;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: _largeSize),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ButtonTheme(
                                minWidth: 20,
                                padding: const EdgeInsets.all(10),
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      boy--;
                                    });
                                  },
                                  child: Expanded(
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: _largeSize),
                                    ),
                                  ),
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
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "KİLO",
                        style: TextStyle(fontSize: _largeSize),
                      ),
                      Text(
                        kilo.round().toString(),
                        style: const TextStyle(
                            fontSize: 20, color: Colors.lightBlue),
                      ),
                      Expanded(
                        child: Row(children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                kilo++;
                              });
                            },
                            child: Expanded(
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: _largeSize),
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                kilo--;
                              });
                            },
                            child: Expanded(
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: _largeSize),
                              ),
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Haftada kaç gün spor yapıyorsun?",
                  style: TextStyle(fontSize: _smallSize),
                ),
                Text(
                  yapilanSpor.round().toString(),
                  style:
                      TextStyle(fontSize: _largeSize, color: Colors.lightBlue),
                ),
                Slider(
                  min: 0,
                  max: 7,
                  value: yapilanSpor,
                  onChanged: (value) {
                    yapilanSpor = value;
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Günde kaç sigara içiyorsunuz?",
                  style: TextStyle(fontSize: _smallSize),
                ),
                Text(
                  icilenSigara.round().toString(),
                  style:
                      TextStyle(fontSize: _largeSize, color: Colors.lightBlue),
                ),
                Slider(
                  min: 0,
                  max: 30,
                  value: icilenSigara,
                  onChanged: (value) {
                    icilenSigara = value;
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: seciliCinsiyet == "KADIN"
                            ? Colors.green
                            : Colors.white),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.female, size: 50),
                        Text(
                          "KADIN",
                          style: TextStyle(fontSize: _largeSize),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      //seciliCinsiyet == "KADIN";
                      if (seciliCinsiyet != "KADIN") {
                        //kadın cinsiyeti seçiliyken seçimi kaldırabilirsi
                        seciliCinsiyet = "KADIN";
                      } else {
                        seciliCinsiyet = "";
                      }
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: seciliCinsiyet == "ERKEK"
                            ? Colors.green
                            : Colors.white),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: _largeSize * 2),
                        Text(
                          "ERKEK",
                          style: TextStyle(fontSize: _largeSize),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      //seciliCinsiyet = "ERKEK";
                      if (seciliCinsiyet != "ERKEK") {
                        //erkek cinsiyeti seçiliyken seçimi kaldırabilirsi

                        seciliCinsiyet = "ERKEK";
                      } else {
                        seciliCinsiyet = "";
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Text(
              "Hesapla",
              style: TextStyle(fontSize: _largeSize),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(
                    user: UserData(
                        boy: boy,
                        kilo: kilo,
                        yapilanSpor: yapilanSpor,
                        icilenSigara: icilenSigara,
                        seciliCinsiyet: seciliCinsiyet)),
              ),
            );
          },
        ),
      ]),
    );
  }
}

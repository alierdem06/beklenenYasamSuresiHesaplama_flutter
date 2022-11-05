import 'package:yasam_beklentisi/model/model.dart';

class Hesap {
  UserData userData = UserData();
  Hesap(this.userData);

  double hesaplama() {
    double sonuc;
    sonuc = 70.0 + userData.yapilanSpor! - userData.icilenSigara!;
    sonuc = sonuc + (userData.boy! / userData.kilo!);

    if (userData.seciliCinsiyet == "KADIN") {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}

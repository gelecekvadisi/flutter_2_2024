void main(List<String> args) {
  String adSoyad = "Furkan Yağmur";

  Ogrenci furkan = Ogrenci();
  furkan.adSoyad = "Furkan Yağmur";
  furkan.mezunMu = true;
  furkan.ortalamaHesapla();
}

class Ogrenci {
  String? adSoyad;
  int? yas;
  int? sinifi;
  double? gno;
  bool? mezunMu;

  void ortalamaHesapla(){}
}
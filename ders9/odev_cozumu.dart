List<String> urunListesi = [];

void main(List<String> args) {
  print("Alışveriş listesine hoşgeldiniz.\nYaptığınız işlemler:");
  print("---------------");

  urunEkle("Kalem");
  urunEkle("Defter");
  urunEkle("Silgi");
  urunEkle("C");

  urunListesiYazdir();
}

void urunEkle(String urunAdi) {
  if (urunAdi.length < 2) {
    print("Ürün adı 2 karakterden az olamaz. Ürün adı: $urunAdi");
  } else {
    urunListesi.add(urunAdi);
    print("Listeye $urunAdi eklendi");
  }
}

void urunListesiYazdir() {
  if (urunListesi.isEmpty) {
    print("Ürün listesi boş.");
  } else {
    print("---------------------------");
    print("Ürün Listesi Yazdırılıyor: ");
    for (var i = 0; i < urunListesi.length; i++) {
      String oAnkiUrunAdi = urunListesi[i];
      int siraNumarasi = i + 1;
      print("$siraNumarasi. ürün    - ${oAnkiUrunAdi}");
    }
    print("---------------------------");
  }
}

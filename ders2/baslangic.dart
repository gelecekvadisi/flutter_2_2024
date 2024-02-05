void main() {
  print("Hello World!");

  //  degisken_tipi degisken_adi = deger;
  String kullaniciAdi = "Ahmet";
  String soyad;
  soyad = "Bozkurt";

  print("Merhaba " + kullaniciAdi + ".");
  print("Merhaba $kullaniciAdi. Bakiyeniz 1000 TL 'dir.");
  print("Merhaba $kullaniciAdi. Bugün hava 25 derecedir.");
  print("Merhaba $kullaniciAdi. Bakiyeniz 1000 TL 'dir.");
  print("Merhaba $kullaniciAdi. Bugün hava 25 derecedir.");

  print("Merhaba ${kullaniciAdi}. Bugün hava çok güzel.");
  print('Merhaba $kullaniciAdi. Bugün hava çok güzel.');
  print("Merhaba '$kullaniciAdi'. Bugün hava çok güzel.");
  print('Merhaba "$kullaniciAdi". Bugün hava çok güzel.');
  print("Merhaba \"$kullaniciAdi\". Bugün hava çok güzel.");
  print('Merhaba \'$kullaniciAdi\'. Bugün hava çok güzel.');
  print("---------------------------------------------------");


  int sayi1 = 10;
  int sayi2 = 20;
  print(sayi1 + sayi2);

  double doubleSayi1 = 10.5;
  double doubleSayi2 = 50.7;
  print(doubleSayi1 + doubleSayi2);

  double gno = 3.48;

  bool mezunMu = false;
  bool erkekMi = true;
  print("Mezun mu değeri: $mezunMu");
  // bool cinsiyet = false;



}
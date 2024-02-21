/// Listeler
/// 1) Sabit uzunluklu listeler
/// 2) Değişken uzunluklu listeler

void main(List<String> args) {
List<int> sayilar = List.filled(5, 0, growable: false);  //  [0, 0, 0, 0, 0]
  print(sayilar);

  sayilar[2] = 7;
  sayilar[0] = 2;
  sayilar[4] = 3;
  sayilar[3] = 20;

  print(sayilar);
  print("Sayılar listesinin 3. indeksli verisi: ${sayilar[3]}");

  List<String> isimler = List.filled(6, "Katılımcı");
  isimler[0] = "Furkan";
  isimler[1] = "Ahmet";
  isimler[2] = "Ali";
  isimler[3] = "Büşra";
  isimler[4] = "Recep";
  isimler[5] = "Taha";

  print(isimler);

  /* int sayi = 0;
  var number = 0;
  number = "Ahmet";

  dynamic isim = "Mehmet";
  isim = false;
  isim = 1;
  isim = 3.14; */

  List karisikListe = List.filled(10, null);
  karisikListe[0] = 3.14;
  karisikListe[7] = "Ahmet";
  karisikListe[2] = true;
  karisikListe[1] = null;
  karisikListe[8] = List.filled(5, null);

}
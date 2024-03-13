void main(List<String> args) {
  //  Lambda function
  //  (sayi1, sayi2) => sayi1 - sayi2;

  int Function(int sayi1, int sayi2) topla = (int sayi1, int sayi2) {
    int toplamSayi = sayi1 + sayi2;
    return toplamSayi;
  };

  int Function(int sayi1, int sayi2) cikar = (sayi1, sayi2) => sayi1 - sayi2;

  String isim = "Ahmet";
  int number = 20;

  topla(10, 20);
  cikar(20, 10);

  List<String> isimler = ["Ahmet", "Mehmet", "Ali", "Furkan"];

  //  Higher Order Function (fonksiyon parametre alan veya geriye fonksiyon döndüren fonksiyonlar)
  Function(List liste, Function(dynamic herBirEleman) donguAdimi) dongu = (
    List liste,
    Function(dynamic herBirEleman) yazdir,
  ) {
    for (var oAnkiListeElemani in liste) {
      yazdir(oAnkiListeElemani);
    }
  };

  dongu(
    isimler,
    (oAnkiEleman) {
      print("O anki liste elemanı: $oAnkiEleman");
    },
  );

  print("------------------------");

  //  list.foreach()
  isimler.forEach((element) {
    print("Foreach liste elemanı: $element");
  });

  List<String> aHarfiOlanIsimler =
      isimler.where((element) => element.toLowerCase().contains("a")).toList();
  print("İçinde \"a\" harfi olan isimler: $aHarfiOlanIsimler");

  List<String> selamlamaMetinleri =
      isimler.map((element) => "Merhaba $element").toList();
      print(selamlamaMetinleri);
  //  where
  //  any
  //  map
  //  containsWhere
  //  foreach
}

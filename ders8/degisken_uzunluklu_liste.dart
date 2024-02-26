void main() {
  // List<String> isimler = List.filled(10, "", growable: true);
  List<String> isimler = ["Furkan", "Ahmet", "Ali"];
  print(isimler);
  isimler.add("Fatma");
  isimler.add("Veli");
  isimler.add("Mehmet");
  print(isimler);

  print("İlk isim: ${isimler[0]}");

  isimler.remove("Furkan");
  isimler.removeAt(3);

  // isimler.clear();

  print(isimler);
  print("Liste uzunluğu: ${ isimler.length }");

  print("Liste boş mu: ${ isimler.isEmpty }");
  print("Liste dolu mu: ${ isimler.isNotEmpty }");

  print("-----------------------------------------");


  for (int i=0; i<isimler.length; i++) {
    print("Katılımcı adı: " + isimler[i]);
  }

  print("-----------------------------------------");

  print(isimler.first);
  print(isimler.last);
  print(isimler.reversed);

  List<String> isimler2 = ["Furkan", "Veli"];
  isimler.addAll(isimler2);
  // isimler.addAll(["Furkan", "Veli"]);
  print(isimler);

  bool haveAli = isimler.contains("Emir");
  print("Listede emir var mı: $haveAli");

  isimler.add("Furkan");
  print(isimler);

  isimler.elementAt(4);   //  isimler[4]
  print("Furkan ${ isimler.indexOf("Furkan") }. indextedir.");
  print("Furkan ${ isimler.lastIndexOf("Furkan") }. indextedir.");

  isimler.insert(2, "Osman");
  print(isimler);

  isimler.shuffle();
  print(isimler);


  listeYazdir(isimler);
  listeYazdir(isimler);
  listeYazdir(isimler);
  listeYazdir(isimler);
  listeYazdir(isimler);
  listeYazdir(isimler);
  listeYazdir(isimler);
  listeYazdir(isimler);

}

void listeYazdir(List<String> isimler) {
  print("---------------------");
  for (int i=0; i<isimler.length; i++) {
    print("Katılımcı adı: " + isimler[i]);
  }
  print("---------------------");
}
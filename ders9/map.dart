void main(List<String> args) {
  // Map<String, String> sozluk = Map();
  Map<String, String> sozluk = {
    "kalem": "pencil",
    "kitap": "book",
  };

  sozluk["kalem"] = "pencil";
  sozluk["kitap"] = "book";
  sozluk["bilgisayar"] = "computer";

  for (String oAnkiKey in sozluk.keys){
    print("$oAnkiKey: ${sozluk[oAnkiKey]}");
  }
  print("---------------------");
  for (String oAnkiValue in sozluk.values){
    print(oAnkiValue);
  }
  print("---------------------");

  for (MapEntry<String, String> entry in sozluk.entries) {
    print("${entry.key}: ${entry.value}");
  }


  bool kalemVarMi = sozluk.containsKey("kalem");
  if (kalemVarMi) {
    print("Kalemin yanında");
  } else {
    print("Kalemini unutma!");
  }
  sozluk.containsKey("pencil");


////////////////////////////

  Map ogrenci = {
    "Adi": "Furkan",
    "soyadı": "Yağmur",
    "yas": 20,
    "sınıf": 3,
    "gno": 3.14,
    "mezunMu": false,
    "aldigiDersler": [
      "Sinyaller ve Sistemler",
      "Lineer Cebir",
      "Mat 1",
    ],
  };

  ogrenci["adı"];

}

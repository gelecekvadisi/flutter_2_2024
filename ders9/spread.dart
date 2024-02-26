void main(List<String> args) {


  List<String> orgunEgitimOgrencileri = [
    "Furkan",
    "Ahmet",
    "Ayşe",
  ];
  List<String> ikinciOgretimOgrencileri = [
    "Mehmet",
    "Ali",
    "Aslı",
  ];

  List<String> derseKatilanOgrenciler = [];

  derseKatilanOgrenciler.addAll([
    ...orgunEgitimOgrencileri,
    ...ikinciOgretimOgrencileri,
  ]);

  print("Derse katılan öğrenciler: $derseKatilanOgrenciler");
}
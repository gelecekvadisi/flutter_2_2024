class Araba {
  Araba() {
    print("Araba nesnesi oluşturuldu.");
  }

  String marka = "Toyota";
  String model = "Corolla";
  int modelYili = 2020;
  int km = 40000;
  bool otomatikMi = true;

  void calistir() {
    print("$marka $model çalıştı.");
  }
}

void main(List<String> args) {
  String isim = "Furkan Yağmur";

  Araba corolla = Araba();

  corolla.marka;
  corolla.otomatikMi;
  corolla.model;
  corolla.calistir();
  // corolla.calistir();
  // corolla.calistir();
  // corolla.calistir();

  Araba civic = Araba();
}
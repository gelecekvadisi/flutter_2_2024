void main(List<String> args) {
  print("----------------------");
  Araba doblo;
  print("----------------------");
  doblo = Araba(
    marka: "Fiat",
    model: "Doblo",
    modelYili: 2024,
    sifirAraba: true,
    renk: 'Siyah',
  );
  print("----------------------");
  // doblo.marka = "Fiat";
  // doblo.model = "Doblo";
  // doblo.sifirAraba = true;

  print(doblo.modelYili);
}

class Araba {
  /* Araba(
    // String arabaMarkasi,
    // String arabaModeli,
    String marka,
    String model,
    int modelYili,
    bool sifirAraba,
    String renk,
  ) {
    this.marka = marka;
    this.model = model;
    this.modelYili = modelYili;
    this.sifirAraba = sifirAraba;
    this.renk = renk;
  } */

  Araba({
    required this.marka,
    required this.model,
    required this.modelYili,
    required this.sifirAraba,
    required this.renk,
  }) {
    print("Araba nesnesi oluşturuldu!");
  }

  String marka;
  String model;
  int modelYili;
  bool sifirAraba;
  String renk;

  void calistir() {}

  void kapat() {}
}

void main() {
  Araba maviAraba = Araba(
    marka: "Toyota",
    model: "Corolla",
    modelYili: 2023,
    km: 20000,
    elektrikliMi: false,
    otomatikMi: true,
  );
  maviAraba.calistir();
  maviAraba.kapat();

  List<Araba> arabaListesi = [];
  arabaListesi.add(maviAraba);
  arabaListesi.add(Araba(
    marka: "Ford",
    model: "Focus",
    modelYili: 2021,
    km: 25000,
    elektrikliMi: false,
    otomatikMi: true,
  ));

  print(maviAraba);
  print(arabaListesi);
}

class Araba {
  String marka;
  String model;
  int modelYili;
  double km;
  bool elektrikliMi;
  bool otomatikMi;

  Araba({
    required this.marka,
    required this.model,
    required this.modelYili,
    required this.km,
    required this.elektrikliMi,
    required this.otomatikMi,
  });

  void calistir() {
    print("$marka marka $model model araba çalıştırıldı!");
  }

  void kapat() {
    print("$marka marka $model model araba kapatıldı!");
  }

  @override
  String toString() {
    return "$marka $model";
  }
}

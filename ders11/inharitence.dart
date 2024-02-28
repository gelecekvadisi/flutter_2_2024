void main(List<String> args) {
  Arac arac1 = Arac();
  arac1.calistir();
  arac1.kapat();
  print("---------------------------------");
  Araba corolla = Araba();
  corolla.lastik1;
  corolla.calistir();
  corolla.kapat();
  print("---------------------------------");
  Ucak boeing = Ucak();
  boeing.calistir();

  print("---------------------------------");
}

class Arac extends Object {
  String? renk;
  String? marka;
  String? model;

  void calistir() {
    print("Arac çalıştırıldı");
  }

  void kapat() {
    print("Arac kapatıldı");
  }

  void hareketEt() {}

  toString() {
    return "$marka $model";
  }
}

class Ucak extends Arac {}

class Araba extends Arac {
  String? lastik1;
  String? lastik2;

  @override
  void calistir() {
    print("Araba Çalıştırıldı!");
  }

  tekerDondur() {}
}

class ElektrikliAraba extends Araba {
  double sarj = 80;

  void sarjGoster() {
    print("Şarj: %$sarj");
  }
}

class FosilYakitliAraba extends Araba {
  void yakitDoldur() {
    renk;
  }
}

void main(List<String> args) {
  Araba araba = Araba();

  Arac arac = FosilYakitliAraba();
  Arac arac2 = Ucak();

  Araba araba2 = FosilYakitliAraba();
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

class Gemi extends Arac {}

class Tren extends Arac {}

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

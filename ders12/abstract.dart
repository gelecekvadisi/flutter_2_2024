//  Abstract(soyut) classlar'dan nesne oluşturulamaz (Constructor tetiklenemez)
//  İçerisine Abstract(soyut) fonksiyonlar yazabiliriz.

void main(List<String> args) {
  Arac arac1 = ElektrikliAraba();
  Araba araba1 = FosilYakitliAraba();
}

abstract class Arac extends Object {
  String? renk;
  String? marka;
  String? model;

  void calistir();
  void kapat();
  void hareketEt();

  toString() {
    return "$marka $model";
  }
}

abstract class Ucak extends Arac {
  @override
  void calistir() {
    print("Uçak çalıştırıldı");
  }
}

abstract class Gemi extends Arac {
  @override
  void calistir() {
    print("Gemi çalıştırıldı");
  }
}

abstract class Tren extends Arac {
  @override
  void calistir() {
    print("Tren çalıştırıldı");
  }
}

abstract class Araba extends Arac {
  String? lastik1;
  String? lastik2;

  @override
  void hareketEt() {
    print("Araba hareket ediyor!");
  }

  tekerDondur() {}
}

class ElektrikliAraba extends Araba {
  double sarj = 80;

  void sarjGoster() {
    print("Şarj: %$sarj");
  }
  
  @override
  void calistir() {
    // TODO: implement calistir
  }
  
  @override
  void kapat() {
    // TODO: implement kapat
  }
}

class FosilYakitliAraba extends Araba {
  void yakitDoldur() {
    renk;
  }
  
  @override
  void calistir() {
    // TODO: implement calistir
  }
  
  @override
  void kapat() {
    // TODO: implement kapat
  }
}

void main(List<String> args) {
  Database db = HiveDatabase();
  InterneteBaglanabilen interneteBaglanabilenDb = FirebaseDatabase();
}

abstract class Hayvan {
  beslen();
  hareketEt();
  sesCikar();
}

class Yuruyebilenler {
  yuru(){}

  yorul(){}
  
  dinlen(){}
}

class DortAyaklilar{
  List<String> ayaklar = [
    "Ayak 1",
    "Ayak 2",
    "Ayak 3",
    "Ayak 4",
  ];
}

class Kopek extends Hayvan implements Yuruyebilenler, DortAyaklilar{
  @override
  List<String> ayaklar = [];

  @override
  beslen() {
    // TODO: implement beslen
    throw UnimplementedError();
  }

  @override
  dinlen() {
    // TODO: implement dinlen
    throw UnimplementedError();
  }

  @override
  hareketEt() {
    // TODO: implement hareketEt
    throw UnimplementedError();
  }

  @override
  sesCikar() {
    // TODO: implement sesCikar
    throw UnimplementedError();
  }

  @override
  yorul() {
    // TODO: implement yorul
    throw UnimplementedError();
  }

  @override
  yuru() {
    // TODO: implement yuru
    throw UnimplementedError();
  }

}

class Kedi extends Hayvan{
  @override
  beslen() {
    // TODO: implement beslen
    throw UnimplementedError();
  }

  @override
  hareketEt() {
    // TODO: implement hareketEt
    throw UnimplementedError();
  }

  @override
  sesCikar() {
    // TODO: implement sesCikar
    throw UnimplementedError();
  }

}

class Kus extends Hayvan{
  @override
  beslen() {
    // TODO: implement beslen
    throw UnimplementedError();
  }

  @override
  hareketEt() {
    // TODO: implement hareketEt
    throw UnimplementedError();
  }

  @override
  sesCikar() {
    // TODO: implement sesCikar
    throw UnimplementedError();
  }

}
///////////////////////////////////////////////////////////

abstract class Database {
  login();
  logOut();
  String dbAddress = "192.168.1.1:8080";
}

abstract class InterneteBaglanabilen {
  interneteBaglan();
  baglantiyiKes();
  baglantiyiKontrolEt();

}

class FirebaseDatabase extends Database implements InterneteBaglanabilen {
  @override
  logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }
  
  @override
  baglantiyiKes() {
    // TODO: implement baglantiyiKes
    throw UnimplementedError();
  }
  
  @override
  baglantiyiKontrolEt() {
    // TODO: implement baglantiyiKontrolEt
    throw UnimplementedError();
  }
  
  @override
  interneteBaglan() {
    // TODO: implement interneteBaglan
    throw UnimplementedError();
  }
}

class SupabaseDatabase extends Database implements InterneteBaglanabilen {
  @override
  logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }
  
  @override
  baglantiyiKes() {
    // TODO: implement baglantiyiKes
    throw UnimplementedError();
  }
  
  @override
  baglantiyiKontrolEt() {
    // TODO: implement baglantiyiKontrolEt
    throw UnimplementedError();
  }
  
  @override
  interneteBaglan() {
    // TODO: implement interneteBaglan
    throw UnimplementedError();
  }
}

class HiveDatabase extends Database {
  @override
  logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}





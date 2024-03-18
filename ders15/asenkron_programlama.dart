void main(List<String> args) async {
  String kullaniciAdi = "Furkan";

  try {
    islemYap();
  } catch (e) {
    print("Sayın $kullaniciAdi bey, bir hata aldınız: $e");
  }
  




  print("Program başladı.");


  // Future(() {
  //   print("Çorba pişiriliyor.");
  //   // throw "Çorba yandı!";
  //   print("Çorba tabağa konuluyor.");
  //   print("Çorba servise hazır.");
  // });


  await Future.delayed(Duration(seconds: 2), () {
    print("Çorba pişiriliyor.");
    // throw "Çorba yandı!";
    print("Çorba tabağa konuluyor.");
    print("Çorba servise hazır.");
  }).then((value) {
    print("Future işlemi başarıyla tamamlandı.");
  }).catchError((error) {
    print("Future işleminde hata alındı! $error");
  }).whenComplete(() => print("Future sonlandı."));
  print("Program bitti.");

}

islemYap(){
  toplamYazdir();
}

toplamYazdir(){
  yazdir(2+2);
}

yazdir(num sayi) {
  // int tempNumber = 5 ~/ 0;
  throw UnsupportedError("Sayılar 0'a bölünemez.");

  print(sayi);
}

veriOku() async {
  try {
    await veritabaninaBaglan();
    print("Future başarıyla tamamlandı.");  //  then
  } catch (e) {
    print("Futureda hata alındı.");         //  catchError
  } finally {
    print("Future tamamlandı.");            //  whenComplate
  }
  
  verileriOku();
}

void verileriOku() {
}

veritabaninaBaglan() async {
}


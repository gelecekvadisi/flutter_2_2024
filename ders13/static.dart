void main(List<String> args) {
  Matematik mat1 = Matematik();
  Matematik mat2 = Matematik();
  Matematik mat3 = Matematik();
  Matematik mat4 = Matematik();
  Matematik mat5 = Matematik();

  mat1.sayi1 = 1000;
  print("mat1.sayi1: ${mat1.sayi1} || mat2.sayi1: ${mat2.sayi1}");

  mat1.topla();
  mat2.topla();
  print("İşlem sayısı: ${Matematik.islemSayisi}");
  mat3.topla();
  mat1.topla();
  mat5.topla();
  print("İşlem sayısı: ${Matematik.islemSayisi}");
}

class Matematik {
  int sayi1 = 10;
  int sayi2 = 20;

  static int islemSayisi = 0;
  static final double pi = 3.14;

  int topla() {
    islemSayisi++;
    return sayi1 + sayi2;
  }
}
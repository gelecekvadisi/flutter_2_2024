/// donus_tipi fonksiyon_ismi() {}
///
/// 1) Problemleri daha küçük alt problemlere ayırarak çözmemizi kolaylaştırır.
/// 2) Tekrar tekrar aynı kodları yazmamıza gerek kalmaz.
/// 

void main() {
  print("Hello World!");
  cevreYazdir();

  int alan = alanHesapla(15, 25);
  int alan2 = alanHesapla(30, 40);

  int hacim = hacimHesapla(3, 5, 4);

  print("Alan: $alan");
  print("Hacim: $hacim");

}

void cevreYazdir() {
  int kisaKenar = 10;
  int uzunKenar = 20;

  int cevre = (kisaKenar + uzunKenar) *2;

  print(cevre);
}

int alanHesapla(int en, int boy) {
  
  int alan = en * boy;
  //  print("Alan: $alan");
  return alan;
}

/* hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
} */

//  fat arrow (=>)
int hacimHesapla(int en, int boy, int yukseklik) => en * boy * yukseklik;

int maxOlaniBul(int sayi1, int sayi2) => (sayi1 > sayi2) ? sayi1 : sayi2;
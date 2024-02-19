/// Fonksiyonlarda parametre kullanımı 
/// 1) Zorunlu parametreler (Required parameeters)
/// 2) Opsiyonel parametreler (Optional parameeters)
/// 3) İsimlendirilmiş parametreler (Named parameeters)

void main(List<String> args) {
  topla(4, 6);
  topla(3, 5, 7);
  topla(1, 6, 2, 8);

  daireAlanHesapla(3, 3);
}

int topla(int sayi1, int sayi2, [int? sayi3, int sayi4 = 0]) {
  return sayi1 + sayi2 + (sayi3 ?? 0) + sayi4;
} 

double daireAlanHesapla(int r, [double pi = 3.14]){
  return pi * r*r;
}
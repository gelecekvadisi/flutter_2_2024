/// #Karşılaştırma Operatörleri
/// 
/// <, >, <=, >=, ==, !=
/// 
/// 
/// #Mantıksal Operatörler
/// 
/// &&, ||, !
/// 
/// 
/// #Aritmetik Operatörler
/// 
/// +, -, *, /, % (Mod alma)
/// 23 % 5 = 3
/// 
/// #Atama Operatörleri
/// 
/// +=, -=, *=, /=
/// Örn: 
/// int sayi = 2;
/// sayi = sayi + 3;
/// sayi += 3; // Burada sayi değişkeni "2+3" yani 5 değerini tutar. 
/// 
/// 
/// #Artırma ve Azaltma Operatörleri
/// 
/// ++, --
/// Bu işlemler değişkenin değerini bir artırır veya azaltır.
/// Değişkenden sonra yazılırsa bu işlemi değişkeni kullandıktan sonra yapar.
/// 
/// Örn: sayi++, ++sayi

void main() {
  /* String? kullaniciAdi;
  bool kullaniciVarMi = (kullaniciAdi != null);
  
  if (!kullaniciVarMi) {
    print("Lütfen uygulamaya hesabınız ile giriş yapın.");
  } */

  /* int sayi = 20;
  sayi += 3; */

  int index = 6;
  print("index: ${++index}");
  print("index: ${index}");
}
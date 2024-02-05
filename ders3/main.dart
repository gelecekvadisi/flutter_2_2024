/* 
  KARŞILAŞTIRMA OPERATÖRLERİ
  <   Küçüktür
  >   Büyüktür
  ==  Eşittir
  !=  Eşit değildir
  <=  Küçük veya eşittir
  >=  Büyük veya eşittir
*/

/* 
  ||  Veya
  &&  Ve
  !   Tersleme operatörü(değili)
*/

void main() {
  int sayi1 = 50;
  int sayi2 = 20;

  //  İki sayıdan küçük olanı bulma
  if (sayi1 < sayi2) {
    print("Sayı1 daha küçüktür. $sayi1");
  } else if (sayi1 >= sayi2) {
    print("Sayı1 daha büyüktür veya sayılar eşittir.");
  }

  //  iki sayının birbirinden farklı olma durumu
  if (sayi1 != sayi2) {
    print("Sayılar birbirinden farklı.");
  }

  int sayi3 = 120;

  /// bir sayının 100 - 200 aralığında olma durumu
  /// 100 < sayi3 < 200
  ///
  /// sayi3 > 100
  /// sayi3 < 200
  ///
  if (sayi3 > 100 && sayi3 < 200) {
    print("sayi3 100 ila 200 arasındadır. Sayi3=$sayi3");
  } else {
    print("sayi3 100 ila 200 arasında değildir. Sayi3=$sayi3");
  }
  print("******************************");

  if (sayi3 == 100 || sayi3 > 100) {
    print("sayi3 100'den büyük veya eşit.");
  } else {
    print("sayi3 100'den küçük.");
  }









  
}

/// #Döngüler
///
/// Tekrar eden işlemleri yapabilmeyi kolaylaştırırlar.
///
/// 4 tip döngü vardır:
///   * While
///   * Do While
///   * For
///   * For in (Foreach)
///
/// 1) While
/// while (condition) {}
///
/// Örnek:
/// int sayac = 1;
/// while (sayac <= 10) {
///   print(sayac);
///   sayac++;
/// }
///
///
/// 2) For
/// for (sayac_tanimlama ; dongu_sarti ; sayac_artırma_azaltma_islemi)
/// for(int sayac=1; sayac <= 10; sayac++){
///   print(sayac);
/// }
///
/// Örnek:
/// for (int i=0; i<10; i++) {
///   print(i);
/// }
///

void main() {
  //  While Loop
  /* int sayac = 1;
  while (sayac <= 100) {
    if (sayac % 2 == 1) {
      print(sayac);
    }
    sayac++;
  } */

  ///////////////////////////

  for (int sayac = 1; sayac <= 100; sayac++) {
    if (sayac % 5 == 0) {
      print(sayac);
    }
  }



  //  Do While Loop
  /* int sayac = 1;
  do {
    if (sayac % 2 == 1) {
      print(sayac);
    }
    sayac++;
  } while (sayac <= 100); */
}

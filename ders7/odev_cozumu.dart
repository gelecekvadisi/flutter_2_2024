void main() {
  print("Şekil Yazdırma Programına Hoşgeldiniz!");
  kareYazdir(10);
  kareYazdir(3);
  ucgenYazdir(3);
}

void ucgenYazdir(int satirSayisi) {
  print("Üçgen yazdırılıyor:");

  //  0,1,2,3,4,5,6,7,8,9
  // for (int i=0; i<10; i++) {
  for (int i=0; i<satirSayisi; i++) {
    print("#" * (i+1));
  }
}

void kareYazdir(int kenarUzunlugu) {
  print("Kare yazdırılıyor:");

  for(int i=0; i<kenarUzunlugu; i++){
    print("#" * kenarUzunlugu * 3);
  }
}
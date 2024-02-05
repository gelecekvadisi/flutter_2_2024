void main () {
  //  Eğer sınav puanı 90 ile 100 arasında ise AA
  //  Eğer sınav puanı 80 ile 90 arasında ise BA
  //  Eğer sınav puanı 70 ile 80 arasında ise BB
  //  Eğer sınav puanı 60 ile 70 arasında ise CB
  //  Eğer sınav puanı 50 ile 60 arasında ise CC
  //  Eğer sınav puanı 50'den düşük ise FF

  int sinavPuani = 70;

  if (sinavPuani >= 90 && sinavPuani <= 100) {
    print("Sınav Notu: AA");
  } else if (sinavPuani >= 80 && sinavPuani < 90) {
    print("Sınav Notu: BA");
  } else if (sinavPuani >= 70 && sinavPuani < 80) {
    print("Sınav Notu: BB");
  } else if (sinavPuani >= 60 && sinavPuani < 70) {
    print("Sınav Notu: CB");
  } else if (sinavPuani >= 50 && sinavPuani < 60) {
    print("Sınav Notu: CC");
  } else if (sinavPuani >= 0 && sinavPuani < 50) {
    print("Sınav Notu: FF");
  } else {
    print("Hatalı veri girişi yaptınız!");
  }


}
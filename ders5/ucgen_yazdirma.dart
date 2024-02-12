void main() {
  /* for (int sayac = 1; sayac <= 10; sayac++) {
    print("###" * sayac);
  } */

  for (int sayac = 1; sayac <= 10; sayac++) {
    if (sayac == 1 || sayac == 10) {
      print("###" * 10);
    } else {
      String line = "";

      for (int sayac2 = 1; sayac2 <= 10; sayac2++) {
        if (sayac2 == 1 || sayac2 == 10) {
          line += "###";
        } else {
          line += "   ";
        }
      }

      print(line);

    }

  }
}
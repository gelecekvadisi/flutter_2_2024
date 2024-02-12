void main() {
  int ay = 2;
  String mevsim;

  switch (ay) {
    case 12:
    case 1:
    case 2:
      mevsim = "Kış";
      break;
    case 3:
    case 4:
    case 5:
      mevsim = "İlkbahar";
      break;
    case 6:
    case 7:
    case 8:
      mevsim = "Yaz";
      break;
    case 9:
    case 10:
    case 11:
      mevsim = "Sonbahar";
      break;
    default:
      mevsim = "Mevsim bulunamadı. Ay değeri hatalı!";
      break;
  }

  print("Ay: $ay Mevsim: $mevsim");
}
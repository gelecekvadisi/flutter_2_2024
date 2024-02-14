void main(List<String> args) {
  topla(4, 6);
  topla(3, 5, 7);
  topla(1, 6, 2, 8);
}

int topla(int sayi1, int sayi2, [int? sayi3, int sayi4 = 0]) {
  return sayi1 + sayi2 + (sayi3 ?? 0) + sayi4;
} 
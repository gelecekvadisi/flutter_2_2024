void main(List<String> args) {
  Set<String> isimler = Set();
  Set<String> isimler2 = Set.from(["Fatma", "Emir"]);
  isimler.add("Furkan");
  isimler.add("Ahmet");
  isimler.add("Ali");
  isimler.add("Furkan");
  isimler.add("Mehmet");
  isimler.add("Furkan");

  print(isimler);

  if (isimler.contains("Furkan")) {
    isimler.remove("Furkan");
  }

  print("**********************");
  for (String element in isimler) {
    print(element);
  }
  print("**********************");
}
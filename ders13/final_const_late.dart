void main(List<String> args) {
  // final int kenar = 10;
  final kenar2 = 30;
  // var kenar3 = [];
  // kenar = 20;


  //  final çalıştırılma zamanında sabit değerler ile çalışır
  //  const ise derleme zamanında sabit değerler ile çalışır


  const pi = 3.14;
  const String appName = "Gelecek Vadisi";
  // appName = "";


  late String userName;
  //  login işlemleri
  userName = "Furkan";
  bool isAhmet = userName.contains("ahmet");

  //----------------------------

  User kullanici = User();
  //  login işlemleri
  kullanici.age = 20;
  kullanici.userName = "Furkan";
  //  login işlemleri
  print("Kullanıcı adı: ${kullanici.userName}, yaşı: ${kullanici.age}, email: ${kullanici.email}");

}

class User {
  late String userName;
  late String email;
  late String password;
  late int age;
}
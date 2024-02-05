void main() {
  String kullaniciAdi = "ahmet";   // arayüzden girilen değer
  String parola = "1234567890";    // arayüzden girilen değer


  if(kullaniciAdi == "ahmet" && parola == "Ahmet123") {
    print("Ana sayfaya yönlendiriliyor...");
  } else {
    print("Bu kullanıcının uygulamaya giriş yetkisi yok veya parolanız yanlış.");
  }
}
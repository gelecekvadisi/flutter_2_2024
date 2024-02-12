void main() {
  String kullaniciAdi = "ahmet";   // arayüzden girilen değer
  String parola = "1234567890";    // arayüzden girilen değer


  if(kullaniciAdi == "ahmet") {
    print("Kullanıcı adı sorgusu geçildi.");
    if (parola == "123456") {
      print("Ana sayfaya yönlendiriliyor...");
    } else {
      print("Hatalı parola.");
    }
    
  } else {
    print("Bu kullanıcının uygulamaya giriş yetkisi yok veya parolanız yanlış.");
  }
}
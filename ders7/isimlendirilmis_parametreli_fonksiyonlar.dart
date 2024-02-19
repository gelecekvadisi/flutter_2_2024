/// Fonksiyonlarda parametre kullanımı
/// 1) Zorunlu parametreler (Required parameeters)
/// 2) Opsiyonel parametreler (Optional parameeters)
/// 3) İsimlendirilmiş parametreler (Named parameeters)
void main() {
  daireAlanHesapla(3, pi: 3);

  siparisVer(
    urunAdi: "Bilgisayar",
    cepTelNo: "+9051234567",
    musteriAdi: "Ahmet",
    isTelNo: "9098765433456",
    saticiAdi: "Mehmet",
    musteriAdresi: "İstanbul",
    saticiAdresi: "Ankara",
  );

  // "Bilgisayar", "Ahmet", "Mehmet", "İstanbul", "Ankara", "+9051234567", isTelNo: "+9098765433456"
}

double daireAlanHesapla(int yaricap, {double pi = 3.14}) {
  return pi * yaricap * yaricap;
}

void siparisVer({
  required String urunAdi,
  required String musteriAdi,
  required String saticiAdi,
  required String musteriAdresi,
  required String saticiAdresi,
  required String cepTelNo,
  String? isTelNo,
  String? isAdresi,
}) {}

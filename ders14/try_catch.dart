void main(List<String> args) {
  try {
    int sayi = 5 ~/ 0;
    print("Merhaba");
    print(sayi);
  } catch (exception) {
    print("HATA: $exception");
  } finally {
    print("Try - Catch tamamlandı!");
  }

  // IntegerDivisionByZeroException();
  // UnsupportedError("asdas");
  // FormatException();

  bolumYazdir();

  try {
    int age = 17;
    if (age < 18) {
      throw AgeException(currentAge: age, supportedAge: 18);
    } else {
      print("Uygulamaya giriş yapılıyor...");
    }
  } on AgeException catch (exception) {
    print("${exception.message} Yaşınız: ${exception.currentAge}");
  } on FormatException catch (exception) {
    print(exception);
  } on UnsupportedError catch (exception) {
    print(exception);
  } on IntegerDivisionByZeroException catch (exception) {
    print("Tam sayılar sıfıra bölünemez.");
  } catch (exception) {
    print(exception);
  } finally {
    print("Try-catch tamamlandı.");
  }
}

int? bolumYazdir() {
  try {
    int sayi = 5 ~/ 1;
    print("Merhaba");
    print(sayi);
    return sayi;
  } catch (exception) {
    print("HATA: $exception");
  } finally {
    print("Try - Catch tamamlandı!");
  }
}

class AgeException implements Exception {
  String message = "Yaşınız resmi yükümlülükler için yeterli değil.";
  int currentAge;
  int supportedAge;

  AgeException({
    required this.currentAge,
    required this.supportedAge,
  });
}

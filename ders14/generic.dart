void main(List<String> args) {
  MyStack<int> sayilar = MyStack();
  sayilar.push(10);
  sayilar.push(15);
  sayilar.push(6);
  sayilar.push(28);
  var silinenSayi = sayilar.pop();
  // sayilar.push("Furkan");
  // sayilar.push(true);
  // sayilar.push(20.4);
  // sayilar.push(["Ali", "Furkan", "Ayşe"]);

  // topla<int>(1, 3.5);  //  HATALI
  topla<int>(1, 7);
}

num topla<T extends num>(T sayi1, T sayi2) {
  return sayi1 + sayi2;
}

class MyStack<T> {
  List<T> dataList = [];

  push(T yeniVeri) {
    dataList.add(yeniVeri);
  }

  T pop(){
    return dataList.removeLast();
  }

  yazdir() {
    print(dataList);
  }
}
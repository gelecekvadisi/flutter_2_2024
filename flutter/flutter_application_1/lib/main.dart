import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("İlk Uygulamam"),
          centerTitle: true,
        ),
        // backgroundColor: Colors.amber,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            debugPrint("Butona tıklandı!");
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Container(
          // color: Colors.green,
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(36),
          decoration: BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            border: Border.all(
              color: Colors.red,
              width: 10,
              // style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.mynrma.com.au/-/media/2021-best-cars-ford-mustang-hero-mobile.jpg?h=360&w=640&hash=429e38fbefc48878a54438c21c98f863"),
            ),
          ),
        ),
      ),
    );
  }

  Container buildNestedContainer() {
    return Container(
      height: 200,
      width: 300,
      color: Colors.amber,
      // margin: EdgeInsets.only(left: 50, top: 100),
      // padding: EdgeInsets.all(50),
      alignment: Alignment.bottomRight,
      /* constraints: BoxConstraints(
          maxHeight: 500,
          maxWidth: 350,
          minHeight: 100,
          minWidth: 200,
        ), */
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
        child: const Text("Hello World!" /* , textAlign: TextAlign.right, */),
      ),
    );
  }

  Center buildCenteredText() {
    return const Center(
      child: Text(
        "Hello World!",
        style: TextStyle(
          color: Colors.red,
          fontSize: 48,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

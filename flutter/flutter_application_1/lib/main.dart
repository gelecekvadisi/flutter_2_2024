import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home_page.dart';

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
        body: HomePage(),
      ),
    );
  }

  Row _buildExpandedFlexible() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            width: 170,
            height: 200,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
        /* Flexible(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ), */
      ],
    );
  }

  Column _icIceColumnRowKullanimi() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "F",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
            Text(
              "L",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
            Text(
              "U",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
            Text(
              "T",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
            Text(
              "T",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
            Text(
              "E",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
            Text(
              "R",
              style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
            ),
          ],
        ),
        Text(
          "L",
          style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
        ),
        Text(
          "U",
          style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
        ),
        Text(
          "T",
          style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
        ),
        Text(
          "T",
          style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
        ),
        Text(
          "E",
          style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
        ),
        Text(
          "R",
          style: TextStyle(fontSize: 36, backgroundColor: Colors.red),
        ),
      ],
    );
  }

  Container _buildColumn() {
    return Container(
      color: Colors.orange,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            child: Icon(
              Icons.access_alarm,
              size: 180,
            ),
          ),
          Container(
            color: Colors.blue,
            child: Icon(
              Icons.safety_check,
              size: 64,
            ),
          ),
          Container(
            color: Colors.green,
            child: Icon(
              Icons.facebook_sharp,
              size: 64,
            ),
          ),
          // Container(
          //   color: Colors.brown,
          //   child: Icon(
          //     Icons.kayaking,
          //     size: 64,
          //   ),
          // ),
        ],
      ),
    );
  }

  Center _buildContainerDecorationDemo() {
    return Center(
      child: Container(
        //  color: Colors.green,
        width: 200,
        height: 200,
        // margin: const EdgeInsets.all(36),
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
            image: NetworkImage(
              "https://p1.hiclipart.com/preview/365/352/961/simple-linux-logo-black-and-white-penguin-png-clipart.jpg",
            ),
            fit: BoxFit.scaleDown,
            // fit: BoxFit.scaleDown,
            repeat: ImageRepeat.repeat,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.blue, offset: Offset(10, 15), blurRadius: 25),
            BoxShadow(
                color: Colors.green, offset: Offset(-10, -15), blurRadius: 25),
          ],
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

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue
            )
          ),
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Field Demo"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  // maxLines: 3,
                  textInputAction: TextInputAction.next,
                  onSubmitted: (value) {
                    debugPrint("Veri girişi tamamlandı: $value");
                  },
                  onChanged: (value) {
                    debugPrint("Yeni değer: $value");
                  },
                  autofocus: true,
                  // maxLength: 16,
                  cursorColor: Colors.red,
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    // label: Text("E-Posta"),
                    labelText: "E-Posta",
                    hintText: "Bu alana E-Posta adresinizi giriniz...",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black38),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    /* focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      gapPadding: 4,
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.blue,
                        style: BorderStyle.solid,
                      )
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      gapPadding: 4,
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.green,
                        style: BorderStyle.solid,
                      )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      gapPadding: 4,
                      borderSide: BorderSide(
                        width: 4,
                        color: Colors.red,
                        style: BorderStyle.solid,
                      )
                    ), */
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      gapPadding: 20,
                      borderSide: BorderSide(
                        width: 5,
                        style: BorderStyle.solid,
                        color: Colors.red
                      )
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 64)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
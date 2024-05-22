import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String parola = "Parola Girilmedi!";
  String email = "";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocus = FocusNode();

  int emailFieldMaxLine = 1;

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    emailFocus.addListener(() {
      if (emailFocus.hasFocus) {
        emailFieldMaxLine = 5;
      } else {
        emailFieldMaxLine = 1;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          /* inputDecorationTheme: const InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
        ), */
          ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Field Demo"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    maxLines: emailFieldMaxLine,
                    focusNode: emailFocus,
                    autofocus: true,
                    controller: emailController,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      labelText: "E-Posta",
                    ),
                    onSaved: (value) {
                      email = value ?? "";
                      debugPrint("E-Posta kaydediliyor: $value");
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "E-Posta alanını doldurunuz";
                      } else if (!value.contains("@")) {
                        return "Lütfen geçerli bir E-Posta adresi giriniz.";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    // controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: "Parola",
                    ),
                    onChanged: (value) {
                      setState(() {
                        parola = value;
                        debugPrint("Yeni değer: $value");
                      });
                    },
                    onSaved: (value) {
                      debugPrint("Parola kaydediliyor: $value");
                    },
                  ),
                  Text("Parolanız: $parola"),
                  ElevatedButton(
                    onPressed: () {
                      passwordController.text = "Parola girildi!";
                      emailController.clear();
                      debugPrint(
                          "E-Posta: ${emailController.text},  Parola: ${passwordController.text}");
                    },
                    child: Text("Kaydol"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        _formKey.currentState!.reset();
                        debugPrint("Kaydedilmiş e-posta: $email");
                      }
                    },
                    child: Text("Form Kaydet"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextField decoratedTextField() {
    return TextField(
      keyboardType: TextInputType.multiline,
      // maxLines: 3,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {
        debugPrint("Veri girişi tamamlandı: $value");
      },
      onChanged: (value) {
        debugPrint("Yeni değer: $value");
      },
      autofocus: true,
      //  maxLength: 16,
      cursorColor: Colors.red,
      style: const TextStyle(color: Colors.blue),
      decoration: InputDecoration(
          // label: Text("E-Posta"),
          labelText: "E-Posta",
          hintText: "Bu alana E-Posta adresinizi giriniz...",
          labelStyle: const TextStyle(color: Colors.black),
          hintStyle: const TextStyle(color: Colors.black38),
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
              borderSide: const BorderSide(
                  width: 5, style: BorderStyle.solid, color: Colors.red)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 64)),
    );
  }
}

import 'package:flutter/material.dart';

class FormInputsPage extends StatefulWidget {
  FormInputsPage({super.key});

  @override
  State<FormInputsPage> createState() => _FormInputsPageState();
}

class _FormInputsPageState extends State<FormInputsPage> {
  bool? isAcceptTerm = false;

  String language = "tr";
  //  en
  //  de
  //  fr

  bool isDarkMode = false;

  double volumeLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.blue.shade900 : Colors.white,
      appBar: AppBar(
        title: Text("Form Inputs"),
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Koşulları kabul ediyor musunuz?"),
              value: isAcceptTerm,
              activeColor: Colors.red,
              secondary: Icon(Icons.access_alarm),
              tristate: true,
              onChanged: (value) {
                setState(() {
                  isAcceptTerm = value;
                });
              },
            ),
            Divider(),
            RadioListTile(
              title: Text("Türkçe"),
              value: "tr",
              groupValue: language,
              onChanged: (value) {
                setState(() {
                  language = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("İngilizce"),
              value: "en",
              groupValue: language,
              onChanged: (value) {
                setState(() {
                  language = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Almanca"),
              value: "de",
              groupValue: language,
              onChanged: (value) {
                setState(() {
                  language = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Fransızca"),
              subtitle: language == "fr" ? Text("Fransızca Biliyorum") : null,
              value: "fr",
              groupValue: language,
              onChanged: (value) {
                setState(() {
                  language = value!;
                });
              },
            ),
            Divider(),
            SwitchListTile(
              title: Text(!isDarkMode ? "Koyu Mod'a geç" : "Açık Mod'a geç"),
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
            Divider(),
            Slider(
              min: 0,
              max: 100,
              divisions: 20,
              value: volumeLevel,
              allowedInteraction: SliderInteraction.tapAndSlide,
              label: volumeLevel.toString(),
              onChanged: (value) {
                setState(() {
                  volumeLevel = value;
                });
              },
            ),
            Text("Ses Düzeyi: $volumeLevel"),
          ],
        ),
      ),
    );
  }
}

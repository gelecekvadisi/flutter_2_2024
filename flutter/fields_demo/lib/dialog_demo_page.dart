import 'package:flutter/material.dart';

class DialogDemoPage extends StatelessWidget {
  const DialogDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Demo"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                            child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                          child: Text("data"),
                        ));
                      });
                },
                child: Text("Show Dialog")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Uygulamadan Çıkış"),
                          content: Text(
                              "Uygulamadan çıkmak istediğinize emin misiniz?"),
                          actions: [
                            TextButton(onPressed: () {}, child: Text("İptal")),
                            TextButton(onPressed: () {}, child: Text("Çıkış")),
                          ],
                        );
                      });
                },
                child: Text("Show Alert Dialog")),
            ElevatedButton(
                onPressed: () async {
                  DateTime? selectedDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2024, 5, 10),
                    lastDate: DateTime(2024, 6, 25),
                    confirmText: "Tamam",
                    cancelText: "İptal",
                  );
                  debugPrint("Seçilen tarih: $selectedDate");
                },
                child: Text("Show Date Picker Dialog")),
            ElevatedButton(
                onPressed: () async{
                  TimeOfDay? secilenTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(hour: 15, minute: 42),
                    initialEntryMode: TimePickerEntryMode.dial,
                  );
                  debugPrint("Seçilen zaman: $secilenTime");
                },
                child: Text("Show Time Picker Dialog")),
          ],
        ),
      ),
    );
  }
}

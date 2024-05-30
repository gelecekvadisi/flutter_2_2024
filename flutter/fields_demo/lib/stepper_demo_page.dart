import 'package:flutter/material.dart';

class StepperDemoPage extends StatefulWidget {
  StepperDemoPage({super.key});

  @override
  State<StepperDemoPage> createState() => _StepperDemoPageState();
}

class _StepperDemoPageState extends State<StepperDemoPage> {
  int selectedIndex = 0;

  late List<Step> stepList;

  @override
  void initState() {
    super.initState();
    }

  @override
  Widget build(BuildContext context) {
    stepList = [
      Step(
        // subtitle: Text("Alt başlık"),
        label: Text("Kimlik Bilgileri"),
        isActive: selectedIndex == 0,
        state: StepState.complete,
        title: Container(), //Text("Kimlik Bilgileri"),
        content: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Ad"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Soyad"),
            ),
          ],
        ),
      ),
      Step(
        isActive: selectedIndex == 1,
        title: Container(),//("Adres Bilgileri"),
        label: Text("Label 2"),
        content: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "İl"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "İlçe"),
            ),
          ],
        ),
      ),
      Step(
        isActive: selectedIndex == 2,
        title: Container(),//Text("Ödeme Bilgileri"),
        label: Text("Label 3"),
        content: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Şirket Adı"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Tckn/Vkn"),
            ),
          ],
        ),
      ),
    ];
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Demo"),
      ),
      body: Stepper(
        currentStep: selectedIndex,
        type: StepperType.horizontal,
        onStepTapped: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        onStepContinue: selectedIndex == (stepList.length - 1)
            ? null
            : () {
                setState(() {
                  selectedIndex++;
                });
              },
        onStepCancel: selectedIndex == 0
            ? null
            : () {
                setState(() {
                  selectedIndex--;
                });
              },
        steps: stepList,
      ),
    );
  }
}

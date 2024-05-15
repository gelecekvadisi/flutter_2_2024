import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop_1_project/constants.dart';

class MyNumberSelector extends StatefulWidget {
  const MyNumberSelector({super.key});

  @override
  State<MyNumberSelector> createState() => _MyNumberSelectorState();
}

class _MyNumberSelectorState extends State<MyNumberSelector> {
  int selectedNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildButton(
          Icons.remove,
          () {
            if (selectedNumber != 0) {
              setState(() {
                selectedNumber--;
              });
            }
          },
        ),
        SizedBox(width: Constants.defaultPadding/2,),
        Text(
          selectedNumber.toString(),
          style: TextStyle(
            color: Constants.textHintColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: Constants.defaultPadding/2,),
        _buildButton(
          Icons.add,
          () {
            setState(() {
              selectedNumber++;
            });
          },
        ),
      ],
    );
  }

  IconButton _buildButton(IconData iconData, void Function() onPressed) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 12),
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Constants.textHintColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: Constants.textHintColor,
      ),
    );
  }
}

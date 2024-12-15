import 'package:flutter/material.dart';

Map<String, dynamic> DecisionMaker(String value) {
  Map<String, dynamic> buttonInformation = {};
  value = value.toLowerCase();
  if (value == '=') {
    buttonInformation['BackgroundColor'] = Color.fromARGB(255, 49, 49, 49);
    buttonInformation['TextColor'] = Colors.red;
  } else if (value == '/' || value == 'x' || value == '-' || value == '+') {
    buttonInformation['BackgroundColor'] =
        const Color.fromARGB(255, 49, 49, 49);
    buttonInformation['TextColor'] = Color.fromARGB(255, 144, 195, 236);
  } else {
    buttonInformation['BackgroundColor'] =
        const Color.fromARGB(255, 49, 49, 49);
    buttonInformation['TextColor'] = Color.fromARGB(255, 144, 195, 236);
  }

  return buttonInformation;
}

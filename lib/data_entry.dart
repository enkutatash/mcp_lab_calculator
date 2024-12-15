import 'dart:math';

import 'package:lab/helper.dart' as global;
import 'package:lab/calculate.dart';
import 'dart:math' as math;

String dataEntry(String controllerText, String btnText) {
  btnText = btnText.toLowerCase();

  if (btnText == '=') {
    controllerText = calculate(controllerText);
    global.isResultCalculated = true;
  } else if (btnText == 'c') {
    controllerText = '';
  } else if (btnText == 'abs' ||
      btnText == 'Sin' ||
      btnText == 'sqrt' ||
      btnText == 'fact') {
    if (global.isErrorPresent) {
      controllerText = '';
      global.isErrorPresent = false;
    }

    if (!isEquation(controllerText, btnText)) {
      if (btnText == 'fact') {
        controllerText = factorial(controllerText);
      } else if (btnText == 'sqrt') {
        controllerText = squareRoot(controllerText);
      } else if (btnText == 'Sin') {
        controllerText = calculateSine(controllerText);
      } else if (btnText == 'abs') {
        controllerText = getAbs(controllerText);
      }
      global.isResultCalculated = true;
    } else {
      global.isErrorPresent = true;
      controllerText = 'Enter valid number';
    }
  } else if (btnText == 'del') {
    if (global.isErrorPresent) {
      controllerText = '';
      global.isErrorPresent = false;
    }
    controllerText = getDelActionText(controllerText);
  } else {
    if (global.isErrorPresent) {
      controllerText = '';
      global.isErrorPresent = false;
    }
    if (global.isResultCalculated) {
      if (isValidEntry(btnText)) {
        controllerText = controllerText + getValidBtnText(btnText);
      } else {
        controllerText = btnText;
      }
      global.isResultCalculated = false;
    } else {
      controllerText = controllerText + getValidBtnText(btnText);
    }
  }

  return controllerText;
}

bool isValidEntry(String btnText) {
  List<String> validOperations = ['x', '/', '+', '-', 'mod', 'pow'];
  for (var element in validOperations) {
    if (btnText == element) return true;
  }
  return false;
}

String getValidBtnText(String btnText) {
  if (btnText == 'mod') {
    btnText = '%';
  } else if (btnText == 'x') {
    btnText = '*';
  } else if (btnText == 'pow') {
    btnText = '^';
  }

  return btnText;
}

String getDelActionText(String btnText) {
  String tempText = '';
  for (var i = 0; i < btnText.length - 1; i++) {
    tempText = tempText + btnText[i];
  }
  return tempText;
}

bool isEquation(String equation, String btnText) {
  List<String> equationCharacters = ['x', '/', '+', '-', 'mod', 'pow'];

  if (btnText == 'abs') {
    if (equation[0] != '+' && equation[0] != '-') {
      bool flag = false;
      for (var i = 0; i < 10; i++) {
        if (equation[0] == i.toString()) {
          flag = true;
          break;
        }
      }
      if (!flag) return true;
    }
  }

  int start = btnText == 'abs' ? 1 : 0;
  for (var i = start; i < equation.length; i++) {
    for (var char in equationCharacters) {
      if (char == equation[i]) return true;
    }
  }
  return false;
}

String factorial(String input) {
  int n = convertToInt(input);
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result.toString();
}

String squareRoot(String input) {
  int n = convertToInt(input);
  return math.sqrt(n).toStringAsFixed(2);
}

bool isPrime(String input) {
  int n = convertToInt(input);
  if (n <= 1) return false;
  for (int i = 2; i * i <= (n / 2) + 1; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

String getAbs(String input) {
  if (input[0] == '-' || input[0] == '+') {
    return input.substring(1, input.length);
  }
  return input;
}

int convertToInt(String input) {
  double tempNum = double.parse(input);
  return tempNum.toInt();
}

String calculateSine(String input) {
 double angle = double.parse(input);
  return sin(angle).toStringAsFixed(2);
}
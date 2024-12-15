import 'package:math_expressions/math_expressions.dart';

String calculate(String equation) {
  try {
    Parser p = Parser();
    Expression exp = p.parse(equation);
    ContextModel cm = ContextModel();
    double result = exp.evaluate(EvaluationType.REAL, cm);
    return result.toString();
  } catch (e) {
    return 'Invalid equation';
  }
}
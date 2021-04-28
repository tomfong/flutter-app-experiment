import 'package:math_expressions/math_expressions.dart';

double convertExpressionToResult(String expStr) {
  expStr = expStr.replaceAll('×', '*');
  expStr = expStr.replaceAll('÷', '/');
  try {
    Parser p = Parser();
    Expression exp = p.parse(expStr);
    return exp.evaluate(EvaluationType.REAL, ContextModel());
  } catch (err) {
    return double.nan;
  }
}

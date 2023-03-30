import 'package:flutter/material.dart';
void main() {
runApp(CalculatorApp());
}
class CalculatorApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: CalculatorScreen(),
);
}
}
class CalculatorScreen extends StatefulWidget {
@override
_CalculatorScreenState createState() => _CalculatorScreenState();
}
class _CalculatorScreenState extends State {
String _displayValue = "0";
String _operation = "";
double _firstNumber = 0;
double _secondNumber = 0;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Simple Calculator"),
),
body: Container(
padding: EdgeInsets.all(16),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
_displayValue,
style: TextStyle(fontSize: 32),
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
buildButton("7"),
buildButton("8"),
buildButton("9"),
buildButton("/"),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
buildButton("4"),
buildButton("5"),
buildButton("6"),
buildButton("*"),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
buildButton("1"),
buildButton("2"),
buildButton("3"),
buildButton("-"),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
buildButton("."),
buildButton("0"),
buildButton("="),
buildButton("+"),
],
),
buildButton("C"),
],
),
),
);
}
Widget buildButton(String buttonText) {
return MaterialButton(
onPressed: () => handleButtonPress(buttonText),
child: Text(
buttonText,
style: TextStyle(fontSize: 24),
),
color: Colors.grey[300],
);
}
void handleButtonPress(String buttonText) {
if (buttonText == "C") {
clearDisplay();
} else if (buttonText == "+" ||
buttonText == "-" ||
buttonText == "/" ||
buttonText == "*") {
setOperation(buttonText);
} else if (buttonText == "=") {
calculateResult();
} else {
addDigit(buttonText);
}
setState(() {
_displayValue = _firstNumber.toString();
});
}
void clearDisplay() {
_firstNumber = 0;
_secondNumber = 0;
_operation = "";
}
void setOperation(String operation) {
_operation = operation;
_secondNumber = double.parse(_displayValue);
_displayValue = "0";
}
void addDigit(String digit) {
if (_displayValue == "0") {
_displayValue = digit;
} else {
_displayValue += digit;
}
if (_operation.isEmpty) {
_firstNumber = double.parse(_displayValue);
}
}
void calculateResult() {
switch (_operation) {
case "+":
_firstNumber += _secondNumber;
break;
case "-":
_firstNumber -= _secondNumber;
break;
case "/":
_firstNumber /= _secondNumber;
break;
case "*":
_firstNumber *= _secondNumber;
break;
default:
break;
}
_secondNumber = 0;
_operation = "";
}
}
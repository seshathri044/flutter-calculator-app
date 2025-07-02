import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String inputValue = "";
  String calculatedValue = "";
  String operator = "";

  Widget calcButton(String text, Color bgColor) {
    return InkWell(
      onTap: () {
        setState(() {
          if (text == "Clear") {
            inputValue = "";
            calculatedValue = "";
            operator = "";
          } else if (text == "+" || text == "-" || text == "*" || text == "/") {
            calculatedValue = inputValue;
            inputValue = "";
            operator = text;
          } else if (text == "=") {
            double calc = double.parse(calculatedValue);
            double input = double.parse(inputValue);

            if (operator == "+") {
              inputValue = (calc + input).toString();
            } else if (operator == "-") {
              inputValue = (calc - input).toString();
            } else if (operator == "*") {
              inputValue = (calc * input).toString();
            } else if (operator == "/") {
              inputValue = (calc / input).toString();
            }
          } else {
            inputValue += text;
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator",style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold, fontSize: 48,
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Text(
                inputValue,
                style: const TextStyle(color: Colors.white, fontSize: 48,),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("7", Colors.grey),
                calcButton("8", Colors.grey),
                calcButton("9", Colors.grey),
                calcButton("/", Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("4", Colors.grey),
                calcButton("5", Colors.grey),
                calcButton("6", Colors.grey),
                calcButton("*", Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("1", Colors.grey),
                calcButton("2", Colors.grey),
                calcButton("3", Colors.grey),
                calcButton("-", Colors.orange),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(".", Colors.grey),
                calcButton("0", Colors.grey),
                calcButton("=", Colors.orange),
                calcButton("+", Colors.orange),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: calcButton("Clear", Colors.black),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

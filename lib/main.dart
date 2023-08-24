import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './widgets/calculator_button.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstname;
  late int secname;
  String history = '';
  String texttoDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      texttoDisplay = '';
      firstname = 0;
      secname = 0;
      res = '';
    } else if (btnVal == 'AC') {
      texttoDisplay = '';
      firstname = 0;
      secname = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (texttoDisplay[0] != '-') {
        res = '-' + texttoDisplay;
      } else {
        res = texttoDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = texttoDisplay.substring(0, texttoDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstname = int.parse(texttoDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secname = int.parse(texttoDisplay);
      if (btnVal == '+') {
        res = (firstname + secname).toString();
        history =
            firstname.toString() + operation.toString() + secname.toString();
      }
      if (btnVal == '-') {
        res = (firstname - secname).toString();
        history =
            firstname.toString() + operation.toString() + secname.toString();
      }
      if (btnVal == 'X') {
        res = (firstname * secname).toString();
        history =
            firstname.toString() + operation.toString() + secname.toString();
      }
      if (btnVal == '/') {
        res = (firstname / secname).toString();
        history =
            firstname.toString() + operation.toString() + secname.toString();
      }
    } else {
      res = int.parse(texttoDisplay + btnVal).toString();
    }
    setState(() {
      texttoDisplay = res;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Calculator',
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Color(0XFF36454F),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white38,
                    )),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    texttoDisplay,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    )),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatedButtons(
                    text: 'AC',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 18,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: 'C',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '<',
                    fillcolor: 0xFFFF8C00,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '/',
                    fillcolor: 0xFFFF8C00,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatedButtons(
                    text: '9',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '8',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '7',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: 'X',
                    fillcolor: 0xFFFF8C00,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatedButtons(
                    text: '6',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '5',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '4',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '-',
                    fillcolor: 0xFFFF8C00,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatedButtons(
                    text: '3',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '2',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '1',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '+',
                    fillcolor: 0xFFFF8C00,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatedButtons(
                    text: '+/-',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '0',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '00',
                    fillcolor: 0xFFF5F5F5,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatedButtons(
                    text: '=',
                    fillcolor: 0xFFFF8C00,
                    textcolr: 0xFF000000,
                    textsize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

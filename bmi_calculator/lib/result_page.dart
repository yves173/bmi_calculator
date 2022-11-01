import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiValue, required this.category, required this.message});
  String message;
  String category;
  String bmiValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C22),
        primaryColor: Color(0xFF090C22),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF090C22),
          title: Center(
            child: Text(
              'BMI Result',
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1F33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '$category'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        '$bmiValue',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 120,
                        ),
                      ),
                      Text(
                        '$message',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Move Back',
                style: TextStyle(fontSize: 30),
              ),
              color: Color(0xFFE83D66),
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}

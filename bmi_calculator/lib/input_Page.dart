import 'package:bmi_calculator/bmiCalculator.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/weightAge.dart';
import 'bmi_constants.dart';

enum Gender_label { male, female }

Gender_label? selectedGender;

class Input_pages extends StatefulWidget {
  const Input_pages({Key? key}) : super(key: key);

  @override
  State<Input_pages> createState() => _Input_pagesState();
}

class _Input_pagesState extends State<Input_pages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedGender = Gender_label.male;
                        },
                      );
                    },
                    child: Gender_widget(
                        widgetGender: 'male',
                        gendericon: Icons.male,
                        actual_Gender: Gender_label.male)),
                GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedGender = Gender_label.female;
                        },
                      );
                    },
                    child: Gender_widget(
                        widgetGender: 'female',
                        gendericon: Icons.female,
                        actual_Gender: Gender_label.female)),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF525362),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text(
                        '$kheight',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Slider(
                    thumbColor: Color(0xFFE83D66),
                    inactiveColor: Colors.grey,
                    value: kheight.toDouble(),
                    max: 250,
                    min: 100,
                    onChanged: (double changedValue) {
                      setState(
                        () {
                          kheight = changedValue.toInt();
                        },
                      );
                    },
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFF1D1F33),
              ),
              width: 170,
              height: 170,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Weight_widget(),
                Age_widget(),
              ],
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            BmiCalculator calc = BmiCalculator(
                height: kheight.toDouble(), weight: kweight.toDouble());
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ResultPage(
                    bmiValue: calc.getBmiValue(),
                    category: calc.getBmiCategory(),
                    message: calc.getBmiAdvice(),
                  );
                },
              ),
            );
          },
          child: Text(
            'Calculate',
            style: TextStyle(fontSize: 30),
          ),
          color: Color(0xFFE83D66),
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        ),
      ],
    );
  }
}

class Gender_widget extends StatelessWidget {
  Gender_widget(
      {required this.widgetGender,
      required this.gendericon,
      required this.actual_Gender});
  String widgetGender;
  IconData gendericon;
  Gender_label actual_Gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            gendericon,
            size: 75,
          ),
          Text(
            widgetGender.toUpperCase(),
            style: TextStyle(
              color: Color(0xFF525362),
              fontSize: 20,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: (actual_Gender == selectedGender)
            ? genderActiveColor
            : genderInactiveColor,
      ),
      width: 170,
      height: 170,
    );
  }
}
// color: Color(0xFF1D1F33),

import 'package:flutter/material.dart';
import 'bmi_constants.dart';

class Weight_widget extends StatefulWidget {
  @override
  State<Weight_widget> createState() => _Weight_widgetState();
}

class _Weight_widgetState extends State<Weight_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF1D1F33),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WEIGHT',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF525362),
            ),
          ),
          Text(
            '$kweight',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    kweight--;
                  });
                },
                child: Container(
                  child: Icon(Icons.horizontal_rule, size: 35),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xFF5D5E6E),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    kweight++;
                  });
                },
                child: Container(
                  child: Icon(Icons.add, size: 35),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xFF5D5E6E),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      width: 170,
      height: 170,
    );
  }
}

class Age_widget extends StatefulWidget {
  // const AgeWidget({Key? key}) : super(key: key);

  @override
  State<Age_widget> createState() => _Age_widgetState();
}

class _Age_widgetState extends State<Age_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFF1D1F33),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'AGE',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF525362),
            ),
          ),
          Text(
            '$kage',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      kage--;
                    },
                  );
                },
                child: Container(
                  child: Icon(Icons.horizontal_rule, size: 35),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xFF5D5E6E),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      kage++;
                    },
                  );
                },
                child: Container(
                  child: Icon(Icons.add, size: 35),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Color(0xFF5D5E6E),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      width: 170,
      height: 170,
    );
  }
}

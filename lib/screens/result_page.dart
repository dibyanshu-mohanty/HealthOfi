import 'package:flutter/material.dart';
import 'dart:math';
const kCardColor = Color(0xFFffffff);
class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult , @required this.resultText , @required this.bmiDec , @required this.resultColor});
  final String bmiResult;
  final String resultText;
  final String bmiDec;
  final Color resultColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text(
            "HEALTHO-Fi",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              letterSpacing: 2,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(35.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe7e6e1),
                      blurRadius: 12.0,
                      spreadRadius: 6.0,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        bmiResult,
                        style: TextStyle(
                          fontSize: 180,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'JosefinSans',
                        ),
                      ),
                      Text(
                        bmiDec,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'JosefinSans',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    resultText,
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w900,
                        color: resultColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Normal BMI range: ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "18.25 kg/m2 - 25kg/m2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'JosefinSans',),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ponderal Index : ",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "10.64 kg/m2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'JosefinSans',),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Text(
                            "Not Satisfied ?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Re-Calculate", style: TextStyle(fontSize: 16),),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Color(0xFF6a097d)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

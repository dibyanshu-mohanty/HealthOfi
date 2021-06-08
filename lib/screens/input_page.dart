import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthofi/calculator.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:flutter/material.dart';
import '../components/gender_icon.dart';
import '../components/reuse_card.dart';
import 'result_page.dart';

const kCardColor = Color(0xFFffffff);
const kActiveCardColor = Color(0xFF6a097d);
const kIconColor = Colors.black;
const kIcolor = Colors.white;

enum GenderName {
  male,
  female,
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  GenderName choosenGender;
  int height = 180;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    kCardColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Text(
                            "AGE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            age.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 52,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'JosefinSans'
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                    backgroundColor: MaterialStateProperty.all(Color(0xFFfafafa))
                                ),
                                child: FaIcon(FontAwesomeIcons.minus,
                                  color: Color(0xFF6a097d),),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                    backgroundColor: MaterialStateProperty.all(Color(0xFFfafafa))
                                ),
                                child: FaIcon(FontAwesomeIcons.plus,
                                  color: Color(0xFF6a097d),),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    kCardColor,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Text(
                            "WEIGHT (kg)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            weight.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontSize: 52,
                              fontWeight: FontWeight.w800,

                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                    backgroundColor: MaterialStateProperty.all(Color(0xFFfafafa))
                                ),
                                child: FaIcon(FontAwesomeIcons.minus,
                                  color: Color(0xFF6a097d),),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(CircleBorder()),
                                  backgroundColor: MaterialStateProperty.all(Color(0xFFfafafa))
                                ),
                                child: FaIcon(FontAwesomeIcons.plus,
                                  color: Color(0xFF6a097d),),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    kCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "HEIGHT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Center(
                          child: Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              (height-2).toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                            Text(
                                (height-1).toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'JosefinSans',
                                ),
                            ),
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontSize: 48, fontWeight: FontWeight.bold, fontFamily: 'JosefinSans',),
                            ),
                            Text(
                              (height+1).toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                            Text(
                              (height+2).toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'JosefinSans',
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Center(
                            child: SfSliderTheme(
                              data: SfSliderThemeData(
                                thumbRadius: 12,
                                thumbColor: Colors.white,
                                thumbStrokeWidth: 2,
                                thumbStrokeColor: Color(0xFF6a097d),
                                overlayRadius: 24,
                              ),
                              child: SfSlider(
                                min: 60.0,
                                max: 300.0,
                                value: height.toDouble(),
                                interval: 60,
                                minorTicksPerInterval: 1,
                                thumbIcon: Icon(Icons.arrow_forward_ios,
                                    color: Color(0xFF6a097d), size: 20.0),
                                showLabels: true,
                                onChanged: (dynamic newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        choosenGender = GenderName.male;
                      });
                    },
                    child: ReuseCard(
                      choosenGender == GenderName.male ? kActiveCardColor : kCardColor,
                      Gender(
                          FontAwesomeIcons.male,
                          "i'm a MALE",
                          choosenGender == GenderName.male ? kIcolor : kIconColor),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        choosenGender = GenderName.female;
                      });
                    },
                    child: ReuseCard(
                      choosenGender == GenderName.female ? kActiveCardColor : kCardColor,
                      Gender(
                          FontAwesomeIcons.female,
                          "i'm a FEMALE",
                          choosenGender == GenderName.female ? kIcolor  : kIconColor),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                "Calculate your Body Mass Index",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF3d84b8),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.0),
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  CalculatorBrain calc = CalculatorBrain(height: height , weight: weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                    bmiResult: calc.CalculateBMI(),
                    resultText: calc.getResult(),
                    bmiDec: calc.CalculateBMIdec(),
                    resultColor: calc.getColor(),
                  ),),);

                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF6a097d)),
                  shape: MaterialStateProperty.all(
                    CircleBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

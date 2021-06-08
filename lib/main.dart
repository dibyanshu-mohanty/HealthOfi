import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(BMIcalculator());

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF6a097d),
          scaffoldBackgroundColor: Color(0xFFf7f7f7),
        ),
        home: CalculatorPage()
      );
  }
}






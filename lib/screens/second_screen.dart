import 'package:flutter/material.dart';

// SCREEN_2
class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondScreen();
  }
}

class _SecondScreen extends State<SecondScreen> {
  double value1 = 50;
  double value2 = 20;
  double value3 = 70;
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  // WIDGET_1 - HEADING
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 85, left: 85),
                    child: Text("Rank to your important topic",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,),
                  ),

                  // WIDGET_2 - HEADING
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("SAT MATH", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ),

                  // WIDGET_3 - SLIDER
                  Container(
                    child: Slider(
                        value: value1,
                        min: 0,
                        max: 100,
                        activeColor: Colors.green,
                        onChanged: (value) => this.value1 = value,
                  ),
                  ),

                  // WIDGET_4 - HEADING
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("SAT READING", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ),

                  // WIDGET_5 - SLIDER
                  Slider(
                    value: value2,
                    min: 0,
                    max: 100,
                    activeColor: Colors.green,
                    onChanged: (value) => this.value2 = value,
                  ),

                  // WIDGET_6 - HEADING
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("SAT WRITING", style: TextStyle(color: Colors.black45, fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ),

                  // WIDGET_7 - SLIDER
                  Slider(
                    value: value3,
                    min: 0,
                    max: 100,
                    activeColor: Colors.green,
                    onChanged: (value) => this.value3 = value,
                  ),
                ],
              ),
            ),
        ),
      );
  }
}


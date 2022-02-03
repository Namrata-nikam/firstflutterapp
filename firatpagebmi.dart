import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusablecard.dart';
import 'package:bmicalculatorflu/IconContent.dart';
import 'resultpage.dart';
import 'calculated_brain.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

const activecardcolor = Color(0xFFAB47BC);
const inactivecardcolor = Color(0xFFCE93D8);
const txtstyle = TextStyle(
  color: Colors.black,
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
enum Gender {
  male,
  female,
  transgender,
  notselected,
}

class inputPagestate extends StatefulWidget {
  @override
  _inputPagestateState createState() => _inputPagestateState();
}

class _inputPagestateState extends State<inputPagestate> {
  late Gender selectgender = Gender.notselected;
  int height = 100;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAB47BC),
        title: Center(
            child: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex:1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectgender = Gender.male;
                      });
                    },
                    child: Reusablecard(
                      colour: selectgender == Gender.male
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: IconContent(
                        icongender: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectgender = Gender.female;
                      });
                    },
                    child: Reusablecard(
                      colour: selectgender == Gender.female
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: IconContent(
                        icongender: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex:2,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Reusablecard(
                  colour: activecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: txtstyle),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      /*SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                            thumbColor: Colors.purple,
                            activeTrackColor: Colors.black,
                            overlayColor: Color(0x29BA68C8),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            inactiveColor: Colors.white,
                            min: 60.0,
                            max: 200.0,
                          ),
                        )*/
                         SfSlider.vertical(
                          value: height.toDouble(),
                          onChanged: (dynamic newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          activeColor:  Colors.black,
                          inactiveColor: Colors.white,
                          min: 55.0,
                          max: 355.0,
                        ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Reusablecard(
                        colour: activecardcolor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              weight.toString(),
                              style: txtstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  elevation: 6.0,
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFFCE9D8),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RawMaterialButton(
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  elevation: 6.0,
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFFCE9D8),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Reusablecard(
                        colour: activecardcolor,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: txtstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  elevation: 6.0,
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFFCE9D8),
                                ),
                                /*RoundIconButton(
                                  icon:
                                  onpre: () {
                                    setState(() {

                                    });
                                  },
                                ),*/
                                SizedBox(
                                  width: 10.0,
                                ),
                                RawMaterialButton(
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  constraints: BoxConstraints.tightFor(
                                    width: 56.0,
                                    height: 56.0,
                                  ),
                                  elevation: 6.0,
                                  shape: CircleBorder(),
                                  fillColor: Color(0xFFCE9D8),
                                ),
                                /*RoundIconButton(
                                  icon:
                                  onpre:
                                ),*/
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return resultpage(
                      bmiresult: calc.calculateBMI(),
                      interpretation: calc.getinpretation(),
                      resulttext: calc.getresults(),
                    );
                  },
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              color: Color(0xFFAB47BC),
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}

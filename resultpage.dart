import 'package:bmicalculatorflu/Reusablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class resultpage extends StatelessWidget {
  const resultpage({required this.bmiresult,required this.resulttext,required this.interpretation}) ;

  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAB47BC),
        title: Center(child: Text('BMICALCULATOR',style: TextStyle(color: Colors.black),)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
            'YOUR RESULT',
            style: TextStyle(
              color: Colors.black,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
            ),
          ),
              )),
          Expanded(flex: 5,
              child: Reusablecard(colour: Color(0xFFAB47BC),
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resulttext.toUpperCase(),style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),),

                      Text(bmiresult,style: TextStyle(
                        color: Colors.black,
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),),

                      Text(interpretation,style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),textAlign: TextAlign.center,),
                    ],
                  )
              )),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text('RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
              ),
              color: Color(0xFFBA68C8),
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

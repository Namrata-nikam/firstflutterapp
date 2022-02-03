import 'dart:math';
class CalculatorBrain {

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _bmi;
  String calculateBMI(){
    var heightinm = height * 0.01;
   _bmi = weight / (heightinm * heightinm);
   print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getresults(){
    if(_bmi >= 25){
      return 'overweight';
    }else if(_bmi > 18.5){
      return 'normal';
    }else {
      return 'underweight';
    }
  }
  String getinpretation(){
    if(_bmi >= 25){
      return 'you have higher than normal body weight. Try exercise more.';
    }else if(_bmi > 18.5){
      return 'you have normal body weight. Good Job.';
    }else {
      return 'you have lower than normal body weight. You can eat a bit more.';
    }
  }
}
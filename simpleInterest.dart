import 'dart:math';

class Interest{
  double? principal = 100;
  double? time = 3.5;
  double? rate =5;
  double? interestRate = 300;
  double? number = 12;
  
  
  double simpleInterest(){
    return(principal! * rate! * time!)/100;
  }
  double compoundInterest(){
    double interestRate100 = interestRate! / 100;
    double ci = (principal! * (1 + interestRate100 / number!) * pow(number!, time!));
    return ci;
  }

}

void main(){

  Interest interest = new Interest();
  interest.simpleInterest();
  interest.compoundInterest();
  print(interest.simpleInterest());
  print(interest.compoundInterest());

}
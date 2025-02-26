import 'dart:io';
import 'dart:async';
void main()async {
  var peso1;
  var altura1;
  print("Vamos calcular seu IMC!");
  print("Quanto você pesa?");
  String peso = stdin.readLineSync() ?? "0";
  print("Qual é a sua altura?");
  String altura = stdin.readLineSync() ?? "0";
  print("Ok, iremos calcular, aguarde alguns segundos");
  await Future.delayed(Duration(milliseconds: 2500 ));
  peso1 = double.parse(peso);
  altura1 = double.parse(altura);
  var calculo = peso1 / (altura1 * altura1);
  var formatedCalculo = calculo.toStringAsFixed(2);
  print("Aqui está seu calculo de IMC(indíce de Massa Corporal): $formatedCalculo");


}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentacion/screens/Counter/acortar_codigo.dart';
//import 'package:flutter_application_1/presentacion/screens/Counter/Counter_acortar_codigo.dart';
//import 'package:flutter_application_1/presentacion/screens/Counter/counter_acortar_codigo.dart';
//import 'package:flutter_application_1/presentacion/screens/Counter/counter_screen.dart';
//import 'package:flutter_application_1/presentacion/screens/Counter/counter_screen_funtion.dart';

void main(){

runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,  //para borrar el debug
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple  //dar colores
      ),
      home: const AcortarCodigo()
    );
  }
}
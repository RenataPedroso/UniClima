import 'package:flutter/material.dart';
import 'package:weather_forecast/screens/home.dart';
import 'package:weather_forecast/theme/theme.dart';
//sempre que inserirmos dependencias pelo yaml ou terminal, rodar um 'flutter pub get' no terminal para atualizar as dependencias do projeto

void main() {
  runApp(const UniClima()); //chamando o widget uniClima
}

 class UniClima extends StatefulWidget {
   const UniClima({Key? key}) : super(key: key);

   @override
   _UniClimaState createState() => _UniClimaState();
 }

 class _UniClimaState extends State<UniClima> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: const Home(),
       title: "UniClima",
       debugShowCheckedModeBanner: false,
       theme: lightTheme(),
       darkTheme: darkTheme(),
       themeMode: ThemeMode.system, //tema de acordo com o sistema operacional do aparelho
     );
   }
 }

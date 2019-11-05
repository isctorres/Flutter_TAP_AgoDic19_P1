import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(

  MaterialApp(

    routes: {
      '/masa' : (context) => Masa(),
      '/vol' : (context) => Volumen(),
      '/temp' : (context) => Temperatura(),
      '/long' : (context) => Longitud()
    },


    home: Conversor(),
  )
);

class Conversor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // Retornamos la instancia de otra clase que contiene los widgets
    return ConversorState();
  }
}

class ConversorState extends State<Conversor>{
  @override
  Widget build(BuildContext context) {
    // Retornamos la construccion completa de Widgets
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: null,
      title: Text("Bienvenidos....",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
      image: Image.network("http://qtoplife.com/wp-content/uploads/2017/10/app-virtual.png"),
      gradientBackground: LinearGradient(
        colors: [Colors.white, Colors.orange],
        begin:Alignment.center,
        end: Alignment.bottomCenter
      ),
    );
  }
}

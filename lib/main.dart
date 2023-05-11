import 'package:flutter/material.dart';
import 'screens/secondary.dart';
import 'screens/primary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitamos debug
      debugShowCheckedModeBanner: false,
      //home: BotonFlotantwe(),

      //pantalla inicial
      initialRoute: "/primary",
      //rutas de pantalla del proyecto
      routes: {
        "/primary": (BuildContext context) => Primary(),
        "/secondary": (BuildContext context) => Secondary(),
      },

      //Configuracion tema
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.red,
          //Configurar texto
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.black, fontSize: 20))),
      // Pagina Inicial
    );
  }
}

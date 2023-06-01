import 'package:flutter/material.dart';
import 'package:hurtado/inicio.dart';
import 'package:hurtado/paginatab.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    debugShowCheckedModeBanner: false,
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Inicio(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/2': (context) => const Pagina2(),
    },
  ));
}

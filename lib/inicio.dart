import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  get row => null;

  @override
  Widget build(BuildContext context) {
    Widget nombre = Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.only(left: 60, top: 10, right: 60, bottom: 0),
        decoration: BoxDecoration(
          color: const Color(0xacdcb0ff),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 5, color: const Color(0xff9a75ff)),
        ),
        width: 100,
        height: 90,
        child: Column(
          children: const [
            Text(
              "Rocio Hurtado",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ));

    Widget imagen = Padding(
        padding: const EdgeInsets.all(90),
        child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff9a75ff),
                  width: 8.0,
                ),
                bottom: BorderSide(
                  color: Color(0xff9a75ff),
                  width: 8.0,
                ),
              ),
            ),
            width: 100,
            height: 150,
            child: Column(
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/RocioHurtadoHeredia/carlsjr_img/main/Screenshot_20230512-082743.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ],
            )));

    Widget grupo = Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: const Color(0xacdcb0ff),
          border: Border.all(width: 5, color: const Color(0xff9a75ff)),
        ),
        width: 100,
        height: 60,
        child: Column(
          children: const [
            Text(
              "6I Programacion",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfff6efff),
        appBar: AppBar(
          title: const Text('Agregando bordes'),
          centerTitle: true,
          backgroundColor: const Color(0xffad78fb),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
              ),
              onPressed: () => _dialogBuilder(context),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xffad78fb)),
                accountName: Text(
                  "Rocio Hurtado",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                accountEmail: Text(
                  "rocihurt06@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.document_scanner,
                ),
                title: const Text('Tabbar'),
                onTap: () {
                  Navigator.pushNamed(context, '/2');
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            const Padding(padding: EdgeInsets.all(10.0)),
            nombre,
            imagen,
            grupo,
          ],
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Aviso'),
          content: const Text(
            'Escoge alguna opcion diponible!',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

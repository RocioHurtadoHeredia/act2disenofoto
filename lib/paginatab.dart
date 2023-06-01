import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cumple = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    '6 de agosto',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Naci el 6 de agosto del 2005 un sabado',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget gustos = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Gustos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Me gustan muchos los videojuegos y el anime, tambien me gusta leer libros sobre misterio y romance.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget familia = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Familia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Mi mama tiene 52 años y mi papa tiene 53 años, tengo dos hermanos, uno mayor de 24 años y uno menor de 14 años.',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffad78fb),
          title: const Text('Agregando bordes'),
          centerTitle: true,
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
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: const Color(0xff9959f8)),
            tabs: const [
              Tab(
                child: Text('Cumpleaños'),
              ),
              Tab(
                child: Text('Gustos'),
              ),
              Tab(
                child: Text('Familia'),
              ),
            ],
          ),
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
        body: TabBarView(
          children: [
            ListView(children: [
              Image.network(
                'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2018/01/283709-crear-tarjetas-felicitar-cumpleanos.jpg?tf=3840x',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              cumple,
            ]),
            ListView(children: [
              Image.network(
                'https://www.hamartia.com.ar/wp-content/uploads/2022/08/manga-o-anime.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              gustos,
            ]),
            ListView(children: [
              Image.network(
                'https://static.vecteezy.com/system/resources/previews/005/084/945/original/big-family-with-three-generation-free-vector.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              familia,
            ]),
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

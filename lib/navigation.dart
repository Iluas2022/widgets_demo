import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/settings': (context) => const SecondScreen(),
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
  child: ListView(padding: EdgeInsets.zero, children: [
    DrawerHeader(

      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: Container(
        height: 200,
      ),
    ),
    ListTile(
      leading: const Icon(Icons.one_k),
      title: const Text("Главная"),

      onTap: () {
        //Navigator.pop(context);
        Navigator.pushNamed(context, '/');
      },
    ),
    ListTile(
      leading: const Icon(Icons.two_k),
      title: const Text("Настройки"),
      onTap: () {
        Navigator.pushNamed(context, '/settings');
      },
    ),
  ]),
);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: const Text('Главная')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Главная станица'),

        )
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(title: const Text('Настройки')),
        drawer: navDrawer(context),
        body: const Center(
          child: Text('Настройки'),
        )
    );
  }
}
import 'package:flutter/material.dart';

class NavigationKeysScreen extends StatefulWidget {
  const NavigationKeysScreen({Key? key}) : super(key: key);

  @override
  _NavigationKeysScreenState createState() => _NavigationKeysScreenState();
}

class _NavigationKeysScreenState extends State<NavigationKeysScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fight"),
          actions: <Widget>[
            IconButton(
                tooltip: "Баланс",
                onPressed: () {}, icon: Icon(Icons.music_video)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            TextButton(
              onPressed: () {},
              child: Text("Бой"),
              style: buttonStyle,
            ),
          ],
        ),
        body: Center(child: Text("Игра")
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0))
                          ),
                          child: Image(image: AssetImage('assets/images/Mortal_kombat_logo.png'),),
                        ),
                        const Text("Mortal kombat")
                      ],
                    )
                ),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Выбор героя"),
                onTap: (){
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в выбор героя')));
                },
              ),
              ListTile(
                leading: const Icon(Icons.mood_bad),
                title: const Text("Режим схватки"),
                onTap: (){
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в режим схватки')));
                },
              ),
              const Divider(),
              const Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: const Text("Мультиплеер"),
              ),
              ListTile(
                leading: const Icon(Icons.online_prediction),
                title: const Text("Онлайн"),
                onTap: (){
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в режим онлайн')));

                },
              ),
              ListTile(
                leading: const Icon(Icons.nature_people),
                title: const Text("Разработчики"),
                onTap: (){
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Переход в режим разработчиков')));

                },
              ),
            ],
          ),
        ),



      ),
    );
  }
}

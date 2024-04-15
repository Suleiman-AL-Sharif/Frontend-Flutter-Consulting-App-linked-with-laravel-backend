import 'package:flutter/material.dart';

import '../tabs/drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const String route = 'settings';


  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserved Date'),
        centerTitle: true,
      ),
      body:
      ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.timer_outlined),
            title: Text('Username: Ahmad, Day: Sunday , Hour: 10:00 PM'),
          ),
          ListTile(
            leading: Icon(Icons.timer_outlined),
            title: Text('Username: Rami, Day: Monday , Hour: 1:00 AM'),
          ),
          ListTile(
            leading: Icon(Icons.timer_outlined),
            title: Text('Username: Taghrid, Day: Sunday , Hour: 12:00 AM'),
          ),
          ListTile(
            leading: Icon(Icons.timer_outlined),
            title: Text('Username: Lana, Day: Sunday , Hour: 12:00 AM'),
          ),
          ListTile(
            leading: Icon(Icons.timer_outlined),
            title: Text('Username: Jamilah, Day: Sunday , Hour: 12:00 AM'),
          ),
        ],
      ),
    );
  }
}
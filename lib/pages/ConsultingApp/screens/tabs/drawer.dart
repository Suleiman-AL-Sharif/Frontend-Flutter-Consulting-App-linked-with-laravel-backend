import 'package:flutter/material.dart';

import '../settings/main.dart';

class MealsDrawer extends StatelessWidget {
  const MealsDrawer({Key key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, VoidCallback tap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: _theme.accentColor,
            child: Text(
              'Setting',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: _theme.primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'Advertiser',
            Icons.accessibility,
                () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          buildListTile(
            'Reserved Date',
            Icons.settings,
                () => Navigator.of(context).pushReplacementNamed(SettingsScreen.route),
          ),
        ],
      ),
    );
  }
}
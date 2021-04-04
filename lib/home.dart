import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Change Theme",
                    style: Theme.of(context).primaryTextTheme.headline1),
                Consumer<ThemeNotifier>(
                    builder: (context, notifier, child) => Switch(
                          value: notifier.isDarkTheme,
                          onChanged: (context) {
                            setState(() {
                              notifier.toggleTheme();
                            });
                          },
                        ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

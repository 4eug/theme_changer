import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/home.dart';
import 'package:theme_changer/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: notifier.isDarkTheme ? dark : light,
          home: HomePage(),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sav_task/core/const/def_theme.dart';
import 'package:sav_task/ui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sav Task',
      theme: DefTheme.themeData,
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routeName: (c) => const HomeScreen()},
      initialRoute: HomeScreen.routeName,
    );
  }
}

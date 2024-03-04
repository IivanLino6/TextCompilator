import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:txt_compilator/pages/home_page.dart';
import 'package:txt_compilator/pages/widgets/navigationbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: FluentThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: NavigationBarPage());
  }
}

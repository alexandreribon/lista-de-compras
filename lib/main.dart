import 'package:flutter/material.dart';
import 'package:lista_de_compras/layout.dart';
import 'package:lista_de_compras/pages/about_page.dart';
import 'package:lista_de_compras/pages/home_page.dart';
import 'package:lista_de_compras/pages/settings_page.dart';

void main() => runApp(ThizerList());

class ThizerList extends StatelessWidget {

  final routes = <String, WidgetBuilder> {
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    SettingsPage.tag: (context) => SettingsPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Thizer Lista de Compras",
      theme: ThemeData(
        primaryColor: Layout.primaryColor(),
        primaryColorDark: Layout.darkColor(),
        accentColor: Layout.secondaryColor(),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Layout.lightColor()),
          body1: TextStyle(fontSize: 14),
        ),
      ),
      home: HomePage(),
      routes: routes,
    );
  }

}
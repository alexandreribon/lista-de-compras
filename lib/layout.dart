import 'package:flutter/material.dart';
import 'package:lista_de_compras/pages/about_page.dart';
import 'package:lista_de_compras/pages/home_page.dart';
import 'package:lista_de_compras/pages/settings_page.dart';

class Layout {

  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    SettingsPage.tag
  ];

  static int _selectedIndex = 0;

  static Scaffold getContent(BuildContext context, content) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Layout.primaryColor(),
        title: Center(
          child: Text("Thizer Lista de Compras"),
        ),
      ),
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.forum,), title: Text("Sobre")),
          BottomNavigationBarItem(icon: Icon(Icons.settings,), title: Text("Configurações")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: primaryColor(),
        onTap: (index) {
          _selectedIndex = index;
          Navigator.of(context).pushReplacementNamed(pages[index]);
        },
      ),
    );

  }

  static Color primaryColor([double opacity = 1]) => Color.fromRGBO(62, 63, 89, opacity);
  static Color secondaryColor([double opacity = 1]) => Color.fromRGBO(111, 168, 191, opacity);
  static Color lightColor([double opacity = 1]) => Color.fromRGBO(242, 234, 228, opacity);
  static Color darkColor([double opacity = 1]) => Color.fromRGBO(51, 51, 51, opacity);
  static Color dangerColor([double opacity = 1]) => Color.fromRGBO(217, 74, 74, opacity);
  static Color successColor([double opacity = 1]) => Color.fromRGBO(6, 166, 59, opacity);
  static Color infoColor([double opacity = 1]) => Color.fromRGBO(0, 122, 166, opacity);
  static Color warningColor([double opacity = 1]) => Color.fromRGBO(166, 134, 0, opacity);
}
import 'package:flutter/material.dart';
import 'package:lista_de_compras/layout.dart';
import 'package:lista_de_compras/pages/about_page.dart';

class HomePage extends StatelessWidget {

  static String tag = "home-page";

  @override
  Widget build(BuildContext context) {

    final content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Hello World"),
          RaisedButton(
            child: Text("Sobre"),
            onPressed: () {
              Navigator.of(context).pushNamed(AboutPage.tag);
            },
          ),
        ],
      ),
    ); 

    return Layout.getContent(context, content);
  }
}
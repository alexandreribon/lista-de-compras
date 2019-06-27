import 'package:flutter/material.dart';
import 'package:lista_de_compras/layout.dart';

class AboutPage extends StatelessWidget {

  static String tag = "about-page";

  @override
  Widget build(BuildContext context) {

    final content = Center(
      child: Text("Este app foi criado por Thizer Aplicativos"),
    );

    return Layout.getContent(context, content);
  }
}
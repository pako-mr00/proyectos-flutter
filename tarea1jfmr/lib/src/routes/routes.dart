import 'package:flutter/material.dart';
import 'package:tarea1jfmr/src/pages/chat_page.dart';
import 'package:tarea1jfmr/src/pages/home_page.dart';
import 'package:tarea1jfmr/src/pages/lista_page.dart';
import 'package:tarea1jfmr/src/pages/menu_page.dart';
import 'package:tarea1jfmr/src/pages/perfil_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : (BuildContext context) => MenuPage(),
      'chat'   : (BuildContext context) => ChatPage(),
      'lista'  : (BuildContext context) => ListaPage(),
      'perfil' : (BuildContext context) => PerfilPage()
      
    };

}
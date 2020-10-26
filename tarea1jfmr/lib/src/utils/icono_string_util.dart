import 'package:flutter/material.dart';

final _icons = <String, IconData>{

  'menu'     : Icons.menu,
  'chat'     : Icons.chat,
  'list'     : Icons.list,
  'person'   : Icons.person,
};

Icon getIcon(String nombreIcono){

  return Icon( _icons[nombreIcono], color: Colors.red );
}
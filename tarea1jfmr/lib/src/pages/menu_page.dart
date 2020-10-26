import 'package:flutter/material.dart';
import 'dart:ui';


class MenuPage extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú')
      ),
      body: Stack(
        children: <Widget>[
          _imagenFondo(),
          SingleChildScrollView(
            child: Column(
              children: <Widget> [
                _titulos(),
                _botonesRedondeados(context)
              ],
              
              ),
          )
        ],
      ),
    );
  }
 Widget _imagenFondo(){
 return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/fondo.png'),
        fit: BoxFit.cover,
        ),
      );

 }


 Widget _titulos(){

  return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
       Container(
         padding: EdgeInsets.all(5.0),
         width: 600.0,
         height: 50.0,
        color: Colors.redAccent,
        child: 
      Text('Página de Menú', 
      style: TextStyle(
        color:Colors.white,
        fontSize: 30.0, 
        fontWeight: FontWeight.bold),
        textAlign: TextAlign.center
        ),
      ),
      SizedBox(height: 10.0),
      Container(
         padding: EdgeInsets.all(5.0),
         width: 600.0,
         height: 60.0,
        color: Colors.red[200],
        child: Text('Bienvenido a la página de menú, seleccione cualquier elemento',style: TextStyle(color:Colors.black,fontSize: 20.0, fontStyle: FontStyle.italic),))
    ],
    ),
  


    ),
  );
}

Widget _botonesRedondeados(context){


  return Container(
      child: Column(
        children: <Widget>[
      Table(
        children: [
        TableRow(                                                                                                                                                               
          children: [
            _crearBotonRedondeado(context,Colors.yellowAccent, Icons.chat_bubble, 'Chat ', 'chat'),
            _crearBotonRedondeado(context,Colors.white, Icons.list_alt, 'Lista','lista'),                                                                                                                                                             
          ] 
          ),
            TableRow(
          children: [
            _crearBotonRedondeado(context,Colors.cyanAccent, Icons.add_comment, 'Añadir Chat', ''),
            _crearBotonRedondeado(context,Colors.orangeAccent[100], Icons.person_outline, 'Perfil','perfil'),
          ] 
        ),
      ]
      ),
      Row(children:<Widget> [
          SizedBox(width: 100.0),
          _crearBotonRedondeado(context, Colors.lightGreenAccent, Icons.help, 'Ayuda',''), 
          ],
          )
         
      ],
      

      
      )
  );

}

Widget _crearBotonRedondeado(BuildContext context,Color color, IconData icono, String texto, String ruta ){


  return FlatButton(
    onPressed: (){
      Navigator.pushNamed(context, ruta);
    },
    child: Container(
      height: 120.0,
      width: 130.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget> [
          CircleAvatar(
            backgroundColor: color,
             radius: 25.0,
            child:Icon(icono, color: Colors.black,size: 30.0),
          ),
          Text(texto , style: TextStyle(color: color, fontSize: 22.0, fontWeight: FontWeight.bold))
        ],
        ),
      ),
  );
}
   
  }
  

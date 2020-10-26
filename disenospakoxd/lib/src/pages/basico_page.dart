import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

final estiloTitulo = TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.orange);
final estiloSubTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.brown, fontStyle: FontStyle.italic);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
             _crearTexto(),
             _crearTexto(),


          ],

        ),

      )
    );

    
    
  }

Widget _crearImagen(){
      return Image(
        image: NetworkImage('https://image.winudf.com/v2/image/Y29tLmh1YWRvbmcuZmVuZ2ppbmcxX3NjcmVlbnNob3RzXzBfM2I2ZTkzNzU/screen-0.jpg?fakeurl=1&type=.jpg')
      );
}

Widget _crearTitulo(){
  return Container(
    color: Colors.yellowAccent,
    padding: EdgeInsets.symmetric(horizontal : 30.0, vertical: 20.0),
    child: Row(
      children: <Widget> [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Rio en las montañas', style: estiloTitulo),
            SizedBox(height: 7.0),
            Text('Un rio en Dinamarca' , style: estiloSubTitulo,)

          ],
          ),

          ),

          Icon(Icons.stars, color: Colors.deepOrange, size:40.0),
          Text('41', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))
      ],
      ),
    );


 }


 Widget _crearAcciones(){
   return Container(
     color: Colors.yellow[100],
     child: Row(
  
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: <Widget>[
         _accion(Icons.call, 'CALL'),
       _accion(Icons.near_me, 'ROUTE'),
       _accion(Icons.call, 'SHARE'),

       ],
       ),
   );
 }


 Widget _accion(IconData icon, String texto){

   return Column(
     children: <Widget> [
        
       Icon(icon, color: Colors.red, size: 40.0),
       SizedBox(height: 5.0),
       Text(texto, style: TextStyle(fontSize: 20.0, color: Colors.blue))
       ],
     );
   
  }

  Widget _crearTexto(){
    return Container(
      color: Colors.red[200],
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical:20.0),
    child: Text(
       'Este es un rio ubicado en Dinamarca muy turistico donde puedes ir a pasar el fin de semana con tu familia y amigos a acampar y a realizar muchas otras actividades al aire libre.',
       textAlign: TextAlign.justify, 
       style: TextStyle(fontSize: 18.0, color: Colors.black),
    ),
    );
  }
 }

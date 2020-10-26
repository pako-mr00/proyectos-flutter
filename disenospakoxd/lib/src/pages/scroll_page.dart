import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children:<Widget> [
          _pagina1(),
          _pagina2()

        ],
      )
    );
  }

  Widget _pagina1(){
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );


  }

  Widget _colorFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      );
  }

   Widget _imagenFondo(){



    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
        ),
      );
  }

Widget _textos(){

  final estiloTexto = TextStyle(color: Colors.black87, fontSize: 50.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold );
  
  return SafeArea(
    child: Column(
    children: <Widget> [
      SizedBox(height:80.0),
      Text('30°C', style: estiloTexto),
            SizedBox(height:20.0),
      Text('Jueves', style: estiloTexto),
        SizedBox(height:320.0),
       Text('Tampico', style: estiloTexto),
      Expanded(child: Container()),
      Icon(Icons.keyboard_arrow_down,size: 80.0,color: Colors.deepOrange)
    ],
   

  ),
  );
}
  
  Widget _pagina2(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 218, 192, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(), 
          color: Colors.yellow,
          textColor: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical :20.0),
          child: Text('Welcome!!!',style: TextStyle(fontSize:30.0)),
          ),
          onPressed: (){}
        ),
        
      ),
     );

  }
}
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget> [
                _titulos(),
                _botonesRedondeados()
              ],
              
              ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _fondoApp(){
    

    final gradiente = Container(
      width: double.infinity,
    height: double.infinity,
      decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: FractionalOffset(0.0, 0.40),
             end: FractionalOffset(0.0, 1.0),
             colors: [
               Color.fromRGBO(200, 150, 50, 1.0),
               Color.fromRGBO(35,100,57,1.0),
             ]
             )
      ),
    );
   
final cajavazul = Transform.rotate(
  angle: pi/2.6,
child: Container(
  height: 320.0,
  width: 280.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(80.0),
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(100, 180, 220, 1.0),
        Color.fromRGBO(192, 190, 50, 1.0)
      ]

  ),
  )
)
);

final caja2 = Transform.rotate(
  angle: pi/2.6,
child: Container(
  height: 320.0,
  width: 250.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(95.0),
    gradient: RadialGradient(
      colors: [
        Color.fromRGBO(65, 156, 192, 1.0),
        Color.fromRGBO(150, 223, 50, 1.0)
      ]

  ),
  )
)
);

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: 125.0,
          right: -150.0,
          child: cajavazul
          ),
          Positioned(
          top: 500.0,
          right: 180.0,
          child: caja2
          ),

    
      ],


    ) ;    

  }


Widget _titulos(){

  return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Classify transaction', style: TextStyle(color:Colors.black,fontSize: 30.0, fontWeight: FontWeight.bold),),
      SizedBox(height: 10.0),
      Text('Classify this transaction into a particular category',style: TextStyle(color:Colors.black,fontSize: 20.0, fontStyle: FontStyle.italic),)
    ],
    ),
  


    ),
  );
}


Widget _bottomNavigationBar(BuildContext context){

  return Theme(
    
    data: Theme.of(context).copyWith(
     canvasColor: Color.fromRGBO(35,100,57,1.0),
     primaryColor: Colors.orange,
     textTheme: Theme.of(context).textTheme.copyWith(
       caption: TextStyle(color: Color.fromRGBO(150, 160, 90, 1.0))
     )

    ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 30.0),
          label: ''
          ),

            BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart, size: 30.0),
          label: ''
          ),

            BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle, size: 30.0),
          label: ''
          ),

      ] ,
      ),
    
    );
}


Widget _botonesRedondeados(){

  return Table(
    children: [
      TableRow(                                                                                                                                                               
        children: [
          _crearBotonRedondeado(Colors.yellowAccent, Icons.sports_soccer, 'Soccer'),
          _crearBotonRedondeado(Colors.brown, Icons.sports_tennis, 'Tennis'),                                                                                                                                                             
        ] 
        ),
          TableRow(
        children: [
          _crearBotonRedondeado(Colors.cyanAccent, Icons.sports_volleyball, 'Volleyball'),
          _crearBotonRedondeado(Colors.pink[200], Icons.sports_football, 'Football'),
        ] 
        ),

          TableRow(
        children: [
          _crearBotonRedondeado(Colors.greenAccent, Icons.sports_basketball, 'Basketball'),
          _crearBotonRedondeado(Colors.blue, Icons.sports_baseball, 'Baseball'),
        ] 
        ),

          TableRow(
        children: [
          _crearBotonRedondeado(Colors.yellow[300], Icons.sports_esports, 'ESports'),
          _crearBotonRedondeado(Colors.white, Icons.sports_hockey, 'Hockey'),
        ] 
        ),

    ],
    );
}

Widget _crearBotonRedondeado(Color color, IconData icono, String texto ){


  return BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 0.15, sigmaY: 0.15),
    child: Container(
      height: 150.0,
      margin: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(150,100,57,0.7),
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


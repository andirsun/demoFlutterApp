import 'dart:typed_data';

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState(){
    return new _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle( fontSize: 25);//asi instancio la clase estilo para parametrizar estilos en mis vistas
  int _cont = 10;//con el _ es provada y solo accesible en esta clase

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text('Numero de Clicks ',style: _estiloTexto),
            Text(_cont.toString(),style: _estiloTexto)
          ],
        )
      ),
      floatingActionButton: _crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  } 

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, //alineo botones a la derecha abajo
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _igualar,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _restar),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar)//no le pongo parentesis al metodod _agregar para que solo se ejecte cuando la toca 
      ]
    );
  }
  void _agregar(){
      setState(() {
        _cont++;
      });
  }
  void _restar(){
      setState(() {
        _cont--;
      });
  }
  void _igualar(){
      setState(() {
        _cont=0;
      });
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle( fontSize: 25);//asi instancio la clase estilo para parametrizar estilos en mis vistas
  final cont = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text('Numero de Clicks ',style: estiloTexto),
            Text(cont.toString(),style: estiloTexto)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.add),
        onPressed: (){
          print("Sumare 1");
          
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  } 


}
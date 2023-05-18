import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue[100],
              child: Text('Establecer usuario'),
              onPressed: (){}
            ),
              MaterialButton(
              color: Colors.blue[100],
              child: Text('Cambiar edad'),
              onPressed: (){}
            ),
              MaterialButton(
              color: Colors.blue[100],
              child: Text('Añadir profesión'),
              onPressed: (){}
            )
          ],
        )
      ),
    );
  }
}
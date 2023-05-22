import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singlenton/bloc/user/user_bloc.dart';

import '../models/usuario.dart';

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
              onPressed: (){

                  final newUsuario = Usuario(
                  nombre: 'Fernando Herrera',
                  edad: 29,
                  profesions: [
                    'Develope',
                    'Base de datos',
                    'Quimica'
                  ]
                );

                BlocProvider.of<UserBloc>(context, listen: false).add(
                  ActivateUserEvent(newUsuario));

              }
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
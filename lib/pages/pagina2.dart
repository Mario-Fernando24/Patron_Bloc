import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singlenton/bloc/user/user_bloc.dart';

import '../models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {

    final userBloc =  BlocProvider.of<UserBloc>(context, listen: false);

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
                    'Quimica'
                  ]
                );

                userBloc.add(ActivateUserEvent(newUsuario));

              }
            ),
              MaterialButton(
              color: Colors.blue[100],
              child: Text('Cambiar edad'),
              onPressed: (){

                userBloc.add( ChangeUserAge(90));

              }
            ),
              MaterialButton(
              color: Colors.blue[100],
              child: Text('Añadir profesión'),
              onPressed: (){
                userBloc.add(AddProfesionsUser('DESARROLLADORA'));
              }
            ),

              MaterialButton(
              color: Colors.blue[100],
              child: Text('Eliminar usuario'),
              onPressed: (){
                userBloc.add(DeleteUser());
              }
            )
          ],
        )
      ),
    );
  }
}
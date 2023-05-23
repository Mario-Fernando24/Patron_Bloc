//es el que tiene la informacion de cual es el que tiene el estado actual y procesa los eventosp
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/usuario.dart';
part 'user_event.dart';
part 'user_state.dart';

//le digo los tipo de evento que puede manejar y estado
class UserBloc extends Bloc<UserEvent, UserState> {

   //inicializar el bloc
     UserBloc() : super(const UserInitialState()){

        //manejo de los estado
        on<ActivateUserEvent>((event, emit) {
             print('Activar usuario ');
             emit(UserSetState(event.newUser));
        });

        on<ChangeUserAge>((event, emit) {
          print('Cambiar edad del usuario ${event.age}');
           if(!state.existUser) return;

            final currentState = state;
            final newUser=currentState.user!.copyWith(edad: event.age);

            print('Se emitira un nuevo estado');
            emit(UserSetState(newUser));

        });
         

     }

}
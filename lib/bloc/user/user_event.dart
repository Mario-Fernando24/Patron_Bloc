//los eventos son acciones que se dispara y recibe el bloc y recibe el state
part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUserEvent extends UserEvent {
   //cuando mando el evento ActivateUser siempre debo enviar un objeto de usuario
  final Usuario newUser;
  //constructor posicional 
  ActivateUserEvent(this.newUser);

}
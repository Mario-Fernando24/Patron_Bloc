//como se encuentra el estado del bloc
//el usuario esta logueado, cuantos productos tengo, cuanto debo, cuales son los productos en el carrito de compra
part of 'user_bloc.dart';

@immutable
abstract class UserState {

   final bool existUser;
   final Usuario? user;

   const UserState({
    this.existUser=false,
     this.user});

}

//estado inicial
class UserInitialState extends UserState {
  const UserInitialState(): super(existUser: false, user: null);
}

class UserSetState extends UserState {
  final Usuario newUsuario;

  const UserSetState(this.newUsuario)
  :super(existUser: true, user: newUsuario);
}
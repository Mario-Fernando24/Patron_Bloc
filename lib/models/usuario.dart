class Usuario{

  final String ?nombre;
  final int ?edad;
  final List<String> ?profesions;

   Usuario({required this.nombre,required this.edad,required this.profesions});

      //metodo que regresa un usuario
    Usuario copyWith({String ?nombre,int ?edad,List<String> ?profesion}){

      return Usuario(
        nombre: nombre  ?? this.nombre,
        edad: edad  ?? this.edad,
        profesions: profesion  ?? profesions
    );

   }

}
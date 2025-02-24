
import 'package:dart_application_1/comentable_mixin.dart';

abstract class Post with ComentableMixin {

  final int id;
  final String? content;  //Puede ser nulo el contenido
  final String author;
  final DateTime? createdAt;

  Post({
    required this.author, 
    DateTime? createdAt,
    this.content, 
    required this.id
    }) : createdAt = createdAt ?? DateTime.now();  


    //Forma de imprimir

    void display(){
      if(commentList.isNotEmpty){
        for(final comment in commentList){
          print('Comentario: $comment');
        }
      } else {
        print('No hay comentarios'); //Para mostrar este se debe llamar al padre
      }
    }

}

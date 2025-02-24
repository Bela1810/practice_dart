
// ignore_for_file: unreachable_switch_case

import 'package:dart_application_1/comentable_mixin.dart';
import 'package:dart_application_1/image_post.dart';
import 'package:dart_application_1/post_type.dart';
import 'package:dart_application_1/video_post.dart';

abstract class Post with ComentableMixin {

  final int id;
  final String? content;  //Puede ser nulo el contenido
  final String author;
  final DateTime? createdAt;
  final PostType type;

  Post({
    required this.author, 
    DateTime? createdAt,
    this.content, 
    required this.id,
    required this.type
    }) : createdAt = createdAt ?? DateTime.now();  


    factory Post.fromMap(Map<String,dynamic> map){
      switch (postTypeFromString(map['type'])){
        case PostType.image:
          return ImagePost.fromMap(map);
        case PostType.video:
          return VideoPost.fromMap(map);
      }
    }

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


import 'package:dart_application_1/likeable_mixin.dart';
import 'package:dart_application_1/post.dart';
import 'package:dart_application_1/post_type.dart';

class ImagePost extends Post with LikeableMixin{

  final String imageUrl;

  ImagePost({
    required this.imageUrl,
    required super.author,
    super.content,
    super.createdAt,
    required super.type,
    required super.id
  });

  ImagePost.fromMap(Map<String,dynamic> map) //Aqui estamos leyendo this.imageUrl
    : imageUrl = map['imageUrl'],
    super(
      id: map['id'],
      author: map['author'],
      content: map['content'],
      type: PostType.image

    );
  
  @override
  void display() {
    print('''
    \n
    ---POST IMAGEN---
    Autor : $author
    Contenido: $content
    Imagen: $imageUrl
    Fecha Creación: $createdAt
    id: $id
    Cantidad de Likes; $likes
    ''');

    super.display();
  }


}
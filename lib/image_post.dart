
import 'package:dart_application_1/likeable_mixin.dart';
import 'package:dart_application_1/post.dart';

class ImagePost extends Post with LikeableMixin{

  final String imageUrl;

  ImagePost({
    required this.imageUrl,
    required super.author,
    super.content,
    super.createdAt,
    required super.id
  });
  
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
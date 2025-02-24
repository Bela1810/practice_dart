
import 'package:dart_application_1/post.dart';

class VideoPost extends Post{

  final String videoUrl;
  final int durationInSeconds;

  VideoPost({
    required this.durationInSeconds, 
    required this.videoUrl,
    required super.author,
    super.content,
    super.createdAt,
    required super.id
  });
  
  @override
  void display() {
    print('''
    \n
    ---POST VIDEO---
    Autor : $author
    Contenido: $content
    Video: $videoUrl
    Duracion: $durationInSeconds
    Fecha Creación: $createdAt
    id: $id
    ''');
    super.display();
  }

}
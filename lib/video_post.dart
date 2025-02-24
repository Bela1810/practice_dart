
import 'package:dart_application_1/post.dart';
import 'package:dart_application_1/post_type.dart';

class VideoPost extends Post{

  final String videoUrl;
  final int durationInSeconds;

  VideoPost({
    required this.durationInSeconds, 
    required this.videoUrl,
    required super.author,
    super.content,
    super.createdAt,
    required super.type,
    required super.id
  });

    VideoPost.fromMap(Map<String,dynamic> map) 
    : videoUrl = map['videoUrl'], 
      durationInSeconds= map['durationInSeconds'],
    super(
      id: map['id'],
      author: map['author'],
      content: map['content'],
      type: PostType.video

    );


  
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
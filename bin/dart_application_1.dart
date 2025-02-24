
import 'package:dart_application_1/image_post.dart';
import 'package:dart_application_1/post_service.dart';

import 'package:dart_application_1/video_post.dart';

void main(){

  //Cargando los datos del Feed

  final postService = PostService();

  postService.getFeed().then((feed){

    for (final post in feed){
      if (post is ImagePost){
        post.like();
        post.like();
        post.addComment('Nueva foto sii');

      }

      if(post is VideoPost){
        post.addComment('Otro video');
        post.addComment('Comentario miooo');
      }

      post.display();
    }

    print(feed);

  });

  /*
  //Crear post de tipo imagen
  final ImagePost imagePost = ImagePost(
    id: 1,
    author: 'Belaa',
    content: 'Una foto de medellin.',
    imageUrl: 'url');

  final VideoPost videoPost = VideoPost(
    content: 'Nuevo video',
    durationInSeconds: 3600, 
    videoUrl: 'videourl', 
    author: 'Bela', 
    id: 2);

  //Cambios

  //Simulador comentario
  videoPost.addComment('Buenas');
  videoPost.addComment('Otro comentario');
  imagePost.addComment('Nueva foto siii');*/


  //Mostrando datos en el feed 

  //imagePost.display();
  //videoPost.display();

}


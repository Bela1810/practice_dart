
import 'package:dart_application_1/image_post.dart';

import 'package:dart_application_1/video_post.dart';

void main(){

  //Cargando los datos del Feed

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

  //Simular un evento de like del post
  imagePost.like();

  //Cambio

  //Simulador comentario
  videoPost.addComment('Buenas');
  videoPost.addComment('Otro comentario');
  imagePost.addComment('Nueva foto siii');





  //Mostrando datos en el feed 

  imagePost.display();
  videoPost.display();

}


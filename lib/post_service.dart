
import 'dart:convert';

import 'package:dart_application_1/feed_mock.dart';
import 'package:dart_application_1/post.dart';

class PostService{

  Future<List<Post>> getFeed() async {

      //Simulando tiempo de espera de 2 segundos
    await Future.delayed(Duration(seconds: 2));

    final decodeJson = jsonDecode(feedMock) as List;

    return decodeJson.map((postMap) => Post.fromMap(postMap)).toList() ; 

    //Procesamiento, se decodifica el json, ese mapa se recorre con la funcion map
    //lo estamos transformando de un mapa a un tipo post y al final todo eso se convierte
    // en una lista



  }


}
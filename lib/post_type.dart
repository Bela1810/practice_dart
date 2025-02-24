

//Lee el JSON para convertirlo en un enum
PostType postTypeFromString(String ? type){
  switch(type){
    case 'image':
      return PostType.image;
    case 'video':
      return PostType.video;
    default:
      throw ArgumentError('Ese tipo de post no está soportado');

  }

}

enum PostType {
  image,
  video
}
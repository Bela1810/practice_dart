
mixin LikeableMixin {

  int _likes = 0;   //Atributo privado

  void like(){
    _likes = _likes + 1;

  }

  void unlike(){
    if (_likes > 0){
      _likes = _likes - 1;
    }
  }

  int get likes => _likes;        //Función de una sola linea



}
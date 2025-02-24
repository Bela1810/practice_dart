

mixin ComentableMixin {

  final List<String> _comentList = [];

  void addComment(String comment){
    if(comment.isNotEmpty){
      _comentList.add(comment);
    }
  }

  List<String> get commentList => _comentList; //Se devuelve lo que está privado

}
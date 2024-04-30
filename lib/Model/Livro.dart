class Livro {
  final int id;
  final String titulo;
  final String autor;
  final String sinopse;
  final List<String> categoria;
  final String capa;
  final String editoria;
  final String isbn;
  final String preco;

  Livro(
      {required this.id,
      required this.titulo,
      required this.autor,
      required this.sinopse,
      required this.categoria,
      required this.capa,
      required this.editoria,
      required this.isbn,
      required this.preco});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titulo': titulo,
      'autor': autor,
      'sinopse': sinopse,
      'categoria': categoria,
      'capa': capa,
      'editoria': editoria,
      'isbn': isbn,
      'preco': preco,
    };
  }

  factory Livro.fromJson(Map<String, dynamic> map) {
    return Livro(
      id: map['id'],
     titulo: map ['titulo'],
     autor: map ['autor'],
    sinopse: map['sinopse'],
    categoria: List<String>.from(map['categoria']),
    capa: map['capa'],
    editoria: map['editoria'],
    isbn: map['isbn'],
    preco: map['preco'],
    );
  }
}

import 'dart:convert';
import 'package:http/http.dart';

void main(){
  fetchBooksAndFilter("Paulo Coelho");
}

fetchBooksAndFilter(String author) async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json"; // proced padrao
  Response response = await get(Uri.parse(url));

  List<dynamic> listBooks = json.decode(response.body); // cria uma lista de objetos

  List<dynamic> booksByAuthor =
      listBooks.where((book) => book["author"] == author).toList(); // cria uma lista de mapas onde pega o elemento da lista com authos e compara com o nome cria uma nova lista com o toList

  for (dynamic book in booksByAuthor) {
    print("Título: ${book["title"]}"); // pega somente o titulo 
  }
}
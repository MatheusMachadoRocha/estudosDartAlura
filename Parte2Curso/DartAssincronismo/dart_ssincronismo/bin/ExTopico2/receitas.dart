import 'dart:convert';
import 'package:http/http.dart';

void main(){
  List<String> igredientes = ["ovo","frango"];
  fetchRecipesAndFilter(igredientes);
}

fetchRecipesAndFilter(List<String> listIngredients) async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/recipes.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listRecipes = json.decode(response.body); //padrao aqui

  List<String> listPossibleRecipes = []; // cria uma lista com as receitas possiveis 

  for (dynamic recipeDyn in listRecipes) { //  para cada receita das receitas cria uma mapa 
    Map<String, dynamic> recipe = recipeDyn as Map<String, dynamic>; // apenas garantimos que e um mapa nao é necessario aqui
    List<dynamic> recipeIngredients = recipe["ingredients"]; //pega a lista de igredientes da receita

    bool containsAllIngredients = listIngredients.every( // cria um booleano que verifica se todos os itens que foram passados atendem a condicao de 
      (ingredient) { // que o igrediente esta na lista percorrendo ele no for verificando se contem o o igrediente se tiver muda para verdadeiro
        bool isContainsIngredient = false;
        for (String recipeIngredient in recipeIngredients) {
          if (recipeIngredient
              .toLowerCase()
              .contains(ingredient.toLowerCase())) {
            isContainsIngredient = true;
            break;
          }
        }
        return isContainsIngredient; // se todos os igredientes tiverem na lista entao  retorna como true
      },
    );

    if (containsAllIngredients) {
      listPossibleRecipes.add(recipe["name"]); // se for verdadeiro adiciona nas receitas possiveis
    }
  }

  for (String recipe in listPossibleRecipes) {
    print("Receita: $recipe"); //printa as receitas
  }
}
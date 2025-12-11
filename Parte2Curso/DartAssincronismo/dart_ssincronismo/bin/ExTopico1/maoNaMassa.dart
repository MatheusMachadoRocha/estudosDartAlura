import 'package:http/http.dart';

void main(){
  fetchRecipes();
}

Future<void> fetchRecipes() async{
  String url = 'https://gist.githubusercontent.com/MatheusMachadoRocha/f69a5d560bc3d9593124e3e8a5c6597c/raw/9baadafc96829cb72a55d8af088ba4f3c3068b59/recipes.json';
  Uri uri = Uri.parse(url);
  get(uri).then((Response response){
      print(response.body); // jeito mais atualizado de fazer
  });
}
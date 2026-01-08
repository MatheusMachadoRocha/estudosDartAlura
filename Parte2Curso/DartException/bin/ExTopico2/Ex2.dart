import 'package:http/http.dart' as http;

void erroUrl() async{
  try{
    final response = await http.get(Uri.parse("https://incorreto.com/news"));
    print("dados carregados");
  } on Exception{
    print("Erro");
  }
}
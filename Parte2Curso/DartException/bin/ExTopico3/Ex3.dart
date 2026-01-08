import 'package:http/http.dart' as http;

void main() async{
  try {
    final response = await http.get(Uri.parse("https://api.weather.example.com/current"));
  } 
  on Exception{
    print("Erro");
  }
}
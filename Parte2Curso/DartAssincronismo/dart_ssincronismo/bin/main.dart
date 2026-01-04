import 'package:dart_ssincronismo/screens/account_screens.dart';

void main(){
  AccountScreens accountScreens = AccountScreens();
  accountScreens.initializeStream();
  accountScreens.runChatBot();
}
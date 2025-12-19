//models sao usados para criar pastas sobre mdelos na vida real tipo contas carros enfuim\
// podem ser conhecidos como data classes tambme 
// Uma data class é uma classe projetada para conter apenas dados, sem a complexidade de comportamentos significativos.
class Account{
  String id;
  String name;
  String lastName;
  double balance;

  Account({required this.id,
    required this.name,
    required this.lastName,
    required this.balance});

  factory Account.fromMap(Map<String,dynamic> map){ // factory permite criar um contrutor novo com o outro que ja existe
    return Account(
      id: map['id'] as String,
      name: map['name'] as String,
      lastName: map['lastName'] as String,
      balance: map['balance'] as double,
    );
  }

  Map<String,dynamic> toMap(){
    return <String,dynamic>{
      'id': id,
      'name': name,
      'lastName': lastName,
      'balance': balance,
    };
  }
}
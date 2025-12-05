void enviarEmail(String email){
    print('mensagem enviada para: $email');
}

void main(){
    String joaoEmail = 'joao@gmail.com';
    String mariaEmail ='maria@gmail.com';
    
    enviarEmail(joaoEmail);
    enviarEmail(mariaEmail);

    List<String> listaEmails = ['joao@gmail.com', 'maria@gmail.com'];
    print(listaEmails[0]);
    print(listaEmails[1]);  

    if(listaEmails.contains('enzo@gmail.com')==false){
      listaEmails.add('enzo@gmail.com');
    }

    for(String email in listaEmails){
      print(email);
    }

    Set<String> setEmails = {'joao@gmail.com', 'maria@gmail.com'};

  setEmails.add('enzo@gmail.com');

  setEmails.add('enzo@gmail.com');

  if (setEmails.contains('enzod@gmail.com') == true) {
    print('email de enzo dentro do set');
  } else {
    print('não está dentro do set');
  }

  Map<String, String> pessoasEmails = {
    'joao': 'joao@gmail.com',
    'maria': 'maria@gmail.com',
  };

  pessoasEmails['enzo'] = 'enzo@gmail.com';

  print(pessoasEmails.containsKey('enzo'));
  print(pessoasEmails.values);

  pessoasEmails['enzo'] = 'enzo@gmail.com';

  for (String email in pessoasEmails.values) {
    print(email);
  }
}
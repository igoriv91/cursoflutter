import 'dart:math';
import 'dart:io';

main() {
  //IF/ELSE

  var nota = Random().nextInt(11);
  print('nota do aluno foi $nota.');
  if (nota >= 7) {
    print('aprovado');
  } else {
    print('reporvado');
  }

  // FOR

  for (int ind = 0; ind < 5; ind++) {
    print('ind = $ind');
  }
  for (int ind = 5; ind > 0; ind--) {
    print('ind = $ind');
  }

  //FOR IN
  var notas = [8.7, 9.8, 5.9, 6.2, 3.7];
  for (double nota in notas) {
    print('nota $nota.');
  }

  Map<String, double> mapanotas = {
    'igor': 10.0,
    'nanda': 9.9,
    'joao': 6.3,
  };

  for (String nome in mapanotas.keys) {
    print('Aluno $nome teve nota ${mapanotas[nome]}.');
  }

  for (double nota in mapanotas.values) {
    print('Nota $nota');
  }

  for (MapEntry registro in mapanotas.entries) {
    print('nome ${registro.key} nota ${registro.value}');
  }

  //WILE
  int a = 0;
  while (a < 3) {
    print('a = $a');
    a++;
  }

  // String? dig = '';
  // while (dig != 'sair') {
  //   stdout.write('digite:');
  //   dig = stdin.readLineSync();
  // }
  // print('saiu!');

  //do/WILE

  // do {
  //   stdout.write('digite:');
  //   dig = stdin.readLineSync();
  // } while (dig != 'sair');

  //SWITCH
  switch (nota) {
    case 10:
    case 9:
    case 8:
      print('o melhor');
      break;
    case 7:
    case 6:
    case 5:
      print('aprovado');
      break;
    case 4:
    case 3:
      print('reprovado');
      break;
    default:
      print('que nota é essa?');
  }

  for (var valor = '#'; valor != '#######'; valor += '#') {
    print(valor);
  }
}

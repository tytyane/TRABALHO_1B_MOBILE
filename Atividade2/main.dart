import 'dart:io';
import 'livro.dart';

List<Livro> biblioteca = [];
int proximoId = 1;

void main() {
  int? opcao;

  do {
    print('\n--- Sistema de Biblioteca ---');
    print('1 - Cadastrar livro');
    print('2 - Listar livros');
    print('3 - Atualizar livro');
    print('4 - Remover livro');
    print('5 - Sair');
    stdout.write('Escolha uma opção: ');

    opcao = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcao) {
      case 1: cadastrar(); break;
      case 2: listar(); break;
      case 3: atualizar(); break;
      case 4: remover(); break;
      case 5: print('Saindo...'); break;
      default: print('Opção inválida! Tente novamente.');
    }
  } while (opcao != 5);
}
void cadastrar() {
  stdout.write('Título: ');
  String titulo = stdin.readLineSync()!;

  stdout.write('Autor: ');
  String autor = stdin.readLineSync()!;

  stdout.write('Ano: ');
  int ano = int.parse(stdin.readLineSync()!);

  biblioteca.add(Livro(proximoId++, titulo, autor, ano));
  print('Livro cadastrado com sucesso!');
}
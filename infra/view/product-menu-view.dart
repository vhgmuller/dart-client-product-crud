import 'dart:io';

import 'product-create-view.dart';
import 'product-find-by-name-view.dart';
import 'product-list-view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 6) {
      menu();
      print('Escolha uma das opções: ');
      option = int.parse(terminal.readLineSync() ?? "0");
      executeOption(option, context);
    }
  }

  menu() {
    print('- Produto -');
    print('\n1 - Listar produtos');
    print('2 - Cadastrar novo produto');
    print('3 - Atualizar produto');
    print('4 - Pesquisar produto');
    print('5 - Apagar produto');
    print('6 - Voltar');
    print('7 - Sair');
  }

  executeOption(int option, context) {
    Stdin terminal = context['terminal'];

    switch (option) {
      case 1:
        while (option != 7) {
          menuProduct();
          print('Escolha uma das opções: ');
          option = int.parse(terminal.readLineSync() ?? "0");
          executeOptionProduct(option, context);
        }
        break;
      case 2:
        while (option != 7) {
          menuProduct();
          print('Escolha uma das opções: ');
          option = int.parse(terminal.readLineSync() ?? "0");
          executeOptionProduct(option, context);
        }
        break;
      case 3:
        print('Bye bye =]');
        break;
      default:
        print('Opção Inválida');
    }
  }

  executeOptionProduct(int option, context) {
    switch (option) {
      case 1:
        ListProductView().render(context);
        break;
      case 2:
        CreateProductView().render(context);
        break;
      case 3:
        break;
      case 4:
        ProductFindByNameView().render(context);
        break;
      case 5:
        break;
      case 6:
        render(context);
        break;
      case 7:
        print('Bye bye =]');
        break;
      default:
        print('Opção Inválida');
    }
  }

  executeOptionClient(int option, context) {
    switch (option) {
      case 1:
        //ListProductView().render(context);
        break;
      case 2:
        //CreateProductView().render(context);
        break;
      case 3:
        break;
      case 4:
        //ProductFindByNameView().render(context);
        break;
      case 5:
        break;
      case 6:
        render(context);
        break;
      case 7:
        print('Bye bye =]');
        break;
      default:
        print('Opção Inválida');
    }
  }
}

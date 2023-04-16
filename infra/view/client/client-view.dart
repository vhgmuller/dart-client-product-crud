import 'dart:io';

import '../utils/input-utils.dart';
import '../view.dart';
import 'client-create-view.dart';
import 'client-find-by-name-view.dart';
import 'client-list-view.dart';
import 'client-update-view.dart';
import 'client-delete-view.dart';

class ClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 6) {
      menu();
      print('Escolha uma das opções: ');
      option = InputUtils.validadeInt(terminal.readLineSync());
      executeOption(option, context);
    }
  }

  menu() {
    print('- Cliente -');
    print('\n1 - Listar clientes');
    print('2 - Cadastrar novo cliente');
    print('3 - Atualizar cliente');
    print('4 - Pesquisar cliente');
    print('5 - Apagar cliente');
    print('6 - Voltar');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ListClientView().render(context);
        break;
      case 2:
        CreateClientView().render(context);
        break;
      case 3:
        UpdateProductView().render(context);
        break;
      case 4:
        ClientFindByNameView().render(context);
        break;
      case 5:
        DeleteClientView().render(context);
        break;
      case 6:
        break;
      default:
        print('Opção Inválida, tente novamente...');
    }
  }
}

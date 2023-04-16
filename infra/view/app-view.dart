import 'dart:io';

import 'client/client-view.dart';
import 'product/product-view.dart';
import 'utils/input-utils.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 3) {
      menu();
      print('\nEscolha uma das opções: ');
      option = InputUtils.validadeInt(terminal.readLineSync());
      executeOption(option, context);
    }
  }

  menu() {
    print('- Gerenciador -');
    print('\n1 - Gerenciar produtos');
    print('2 - Gerenciar clientes');
    print('3 - Sair');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ProductView().render(context);
        break;
      case 2:
        ClientView().render(context);
        break;
      case 3:
        print('Bye bye =]');
        break;
      default:
        print('Opção Inválida');
    }
  }
}

import 'dart:io';

import 'view.dart';
import '../view/product/product-menu-view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 3) {
      menu();
      print('Escolha uma das opções: ');
      option = int.parse(terminal.readLineSync() ?? "0");
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
    ProductView product = new ProductView();

    switch (option) {
      case 1:
        product.render(context);
        break;
      case 2:
        //client.render(context);
        break;
      case 3:
        print('Bye bye =]');
        break;
      default:
        print('Opção Inválida');
    }
  }
}

import 'dart:io';

import '../../../usecase/product/create-product-usecase.dart';
import '../utils/input-utils.dart';
import '../view.dart';

class CreateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    String name;
    String description;
    int value;

    print('- Novo Produto -');

    do {
      print('\nNome (pelo menos 3 caracteres):');
      name = terminal.readLineSync() ?? '';
    } while (name.length < 3);

    print('Descrição (opcional):');
    description = terminal.readLineSync() ?? '';

    do {
      print('Valor (deve ser maior que 0):');
      value = InputUtils.validadeInt(terminal.readLineSync());
    } while (value <= 0);

    Map<String, dynamic> data = {
      'name': name,
      'description': description,
      'value': value,
    };

    ProductCreateUseCase().execute({...context, 'data': data});
  }
}

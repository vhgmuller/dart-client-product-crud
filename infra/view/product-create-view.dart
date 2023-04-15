import 'dart:io';
import '../../usecase/create-product-usecase.dart';
import 'view.dart';

class CreateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('- Novo Produto -');

    print('\nNome:');
    String name = terminal.readLineSync() ?? "";

    print('Descrição:');
    String description = terminal.readLineSync() ?? "";

    print('Valor:');
    String value = terminal.readLineSync() ?? "";

    Map<String, String> data = {
      'name': name,
      'description': description,
      'value': value,
    };

    ProductCreateUseCase().execute({...context, 'data': data});
  }
}

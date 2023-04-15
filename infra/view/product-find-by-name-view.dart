import 'dart:io';

import '../../app/domain/product/entity.dart';
import '../../usecase/find-by-name-product-usecase.dart';
import 'view.dart';

class ProductFindByNameView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('- Pesquisar Produtos -');

    Stdin terminal = context['terminal'];

    print('Produto:');
    var search = terminal.readLineSync() ?? "";

    List<Product> contacts =
        ProductFindByNameUseCase().execute({...context, 'search': search});
    //apresentar a resposta do caso de uso
    if (contacts.isEmpty) {
      print("Não foram encontrados contatos com o nome informado");
    } else {
      for (Product contact in contacts) {
        print(
            '${contact.id}, ${contact.name}');
      }
    }
  }
}

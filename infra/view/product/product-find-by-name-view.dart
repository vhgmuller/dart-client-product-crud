import 'dart:io';

import '../../../app/domain/product/product-entity.dart';
import '../../../usecase/product/find-by-name-product-usecase.dart';
import '../view.dart';

class ProductFindByNameView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('- Pesquisar Produtos -');

    Stdin terminal = context['terminal'];

    print('Produto:');
    var search = terminal.readLineSync() ?? "";

    List<Product> products =
        ProductFindByNameUseCase().execute({...context, 'search': search});

    if (products.isEmpty) {
      print("Não foram encontrados produtos com o nome informado...");
    } else {
      for (Product product in products) {
        print('${product.id}, ${product.name}');
      }
    }
  }
}

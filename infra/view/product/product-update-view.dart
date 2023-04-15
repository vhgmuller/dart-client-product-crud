import 'dart:io';
import '../../../usecase/update-product-usecase.dart';
import '../../../app/domain/product/entity.dart';
import '../../../usecase/find-by-name-product-usecase.dart';
import '../view.dart';

class UpdateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('- Atualizar Produto -');

    print('\nInforme o nome do produto que deseja atualizar:');
    var search = terminal.readLineSync() ?? "";

    List<Product> products =
        ProductFindByNameUseCase().execute({...context, 'search': search});

    if (products.isEmpty) {
      print("\nNão foram encontrados produtos com o nome informado...");
    } else {
      String? entry;
      String name = '';
      String description = '';
      String value = '';

      for (Product product in products) {
        int id = product.id;
        print('\n${product.name} -');
        print(
            'Agora, informe apenas os campos que deseja ter a informação atualizada:');
        print('\nNovo nome:');
        entry = terminal.readLineSync() ?? product.name;

        name = entry;
        if (entry == '') {
          name = product.name;
        }

        print('Descrição:');
        entry = terminal.readLineSync() ?? product.description;

        description = entry;
        if (entry == '') {
          description = product.description;
        }

        print('Valor:');
        entry = terminal.readLineSync() ?? product.value;

        value = entry;
        if (entry == '') {
          value = product.value;
        }

        Map<String, dynamic> data = {
          'id': id,
          'name': name,
          'description': description,
          'value': value,
        };
        ProductUpdateUseCase().execute({...context, 'data': data});
      }
    }
  }
}

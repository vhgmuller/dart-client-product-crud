import 'dart:io';
import '../../../app/domain/product/product-entity.dart';
import '../../../usecase/product/delete-product-usecase.dart';
import '../../../usecase/product/find-by-id-product-usecase.dart';
import '../view.dart';

class DeleteProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('- Deletar Produto -');

    print('\nInforme o ID do produto que deseja deletar:');
    var search = int.parse(terminal.readLineSync()!);

    Product? product =
        ProductFindByIdUseCase().execute({...context, 'search': search});

    if (product == null) {
      print("\nNão foram encontrados produtos com o ID informado...");
    } else {
      Map<String, int> data = {'id': product.id};

      ProductDeleteUseCase().execute({...context, 'data': data});
    }
  }
}

import '../../../app/domain/product/product-entity.dart';
import '../../../usecase/product/list-product-usecase.dart';
import '../view.dart';

class ListProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('- Lista de Produtos -');

    List<Product> products = ProductListUseCase().execute({...context});

    for (Product product in products) {
      print(
          '\n${product.id}\nNome: ${product.name};\nDescrição: ${product.description};\nValor: ${product.value} reais.\n');
    }
  }
}

import '../app/domain/product/service.dart';

class ProductListUseCase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];
    return service.getAll;
  }
}

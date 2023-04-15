import '../app/domain/product/entity.dart';
import '../app/domain/product/service.dart';

class ProductCreateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, String> data = context['data'];

    String name = data['name'] ?? "";
    String description = data['description'] ?? "";
    String value = data['value'] ?? "";

    ProductService service = context['productService'];
    service.insert(Product(name, description, value));
  }
}

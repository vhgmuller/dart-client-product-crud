import '../../app/domain/product/product-entity.dart';
import '../../app/domain/product/product-service.dart';
import '../utils/constantsUtils.dart';

class ProductCreateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context[constantsUtils.DATA];

    String name = data[constantsUtils.NAME] ?? "",
        description = data[constantsUtils.DESCRIPTION] ?? "";
    int value = data[constantsUtils.VALUE] ?? 0;

    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    service.insert(Product(0, name, description, value));
  }
}

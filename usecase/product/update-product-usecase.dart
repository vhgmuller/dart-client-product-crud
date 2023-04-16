import '../../app/domain/product/product-entity.dart';
import '../../app/domain/product/product-service.dart';
import '../utils/constantsUtils.dart';

class ProductUpdateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context[constantsUtils.DATA];

    int id = data[constantsUtils.ID];

    String name = data[constantsUtils.NAME] ?? "",
        description = data[constantsUtils.DESCRIPTION] ?? "";
    int value = data[constantsUtils.VALUE] ?? 0;

    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    service.update(Product(id, name, description, value));
  }
}

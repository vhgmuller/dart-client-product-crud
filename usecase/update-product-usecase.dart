import '../app/domain/product/entity.dart';
import '../app/domain/product/service.dart';
import 'utils/constantsUtils.dart';

class ProductUpdateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context[constantsUtils.DATA];

    int id = data[constantsUtils.ID];

    String name = data[constantsUtils.NAME] ?? "",
        description = data[constantsUtils.DESCRIPTION] ?? "",
        value = data[constantsUtils.VALUE] ?? "";

    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    service.updateById(id, Product(name, description, value));
  }
}

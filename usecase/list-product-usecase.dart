import '../app/domain/product/service.dart';
import 'utils/constantsUtils.dart';

class ProductListUseCase {
  execute(Map<String, dynamic> context) {
    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    return service.getAll;
  }
}

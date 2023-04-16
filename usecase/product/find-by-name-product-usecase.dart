import '../../app/domain/product/product-service.dart';
import '../utils/constantsUtils.dart';

class ProductFindByNameUseCase {
  execute(Map<String, dynamic> context) {
    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    String search = context[constantsUtils.SEARCH];
    return service.getByName(search);
  }
}

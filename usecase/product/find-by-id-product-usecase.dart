import '../../app/domain/product/product-service.dart';
import '../utils/constantsUtils.dart';

class ProductFindByIdUseCase {
  execute(Map<String, dynamic> context) {
    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    int id = context[constantsUtils.SEARCH];
    return service.getById(id);
  }
}

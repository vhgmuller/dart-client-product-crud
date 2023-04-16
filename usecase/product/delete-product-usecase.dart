import '../../app/domain/product/product-service.dart';
import '../utils/constantsUtils.dart';

class ProductDeleteUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context[constantsUtils.DATA];

    int id = data[constantsUtils.ID];

    ProductService service = context[constantsUtils.PRODUCT_SERVICE];
    service.deleteById(id);
  }
}

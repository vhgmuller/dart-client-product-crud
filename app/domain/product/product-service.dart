import 'package:collection/collection.dart';
import 'product-entity.dart';

class ProductService {
  int _idController = 0;

  final List<Product> _products = [];

  void insert(Product product) {
    product.id = _idController;
    _products.add(product);
    upgradeIdController();
  }

  void deleteById(int id) {
    _products.removeWhere((listProduct) => listProduct.id == id);
  }

  void update(Product product) {
    _products[getProductArrayPositionById(product.id)] = product;
  }

  List<Product> get getAll => _products;

  Product? getById(int id) {
    return _products.firstWhereOrNull((product) => product.id == id);
  }

  List<Product> getByName(String name) {
    return _products
        .where((product) =>
            product.name.toLowerCase().startsWith(name.toLowerCase()))
        .toList();
  }

  int getProductArrayPositionById(int id) {
    int position = 0;
    for (int i = 0; _products[position].id != id; i++) {
      position++;
    }
    return position;
  }

  void upgradeIdController() {
    this._idController++;
  }
}

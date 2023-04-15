import 'package:collection/collection.dart';
import 'entity.dart';

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

  void updateById(int id, Product product) {
    _products[getProductArrayPositionById(id)] = product;
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

void main() {
  /* var service = ProductService();

  print(service._products.length);
  service.insert(Product(1, 'João', 'joao@email.com', '123'));
  service.insert(Product(2, 'Maria', 'maria@email.com', '123'));
  service.insert(Product(3, 'Ana', 'ana@email.com', '123'));
  //print(service._products.length);
  //print(service.getAll);

  service.delete(Product(2, 'Maria', 'maria@email.com', '123'));
  print(service._products.length);

  //service.update(Product(3, 'Ana', 'ana@gmail.com', '123'));
  //print(service.getByName('Ana'));

  var product = service.getByName("Maria");
  //print(product);*/
}

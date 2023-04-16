import 'dart:io';

import '../../app/domain/client/client-service.dart';
import '../../app/domain/product/product-service.dart';
import '../../infra/view/app-view.dart';
import '../../infra/view/view.dart';

void main() {
  executeApp(AppView());
}

void executeApp(View view) {
  Map<String, dynamic> context = {
    'terminal': stdin,
    'productService': ProductService(),
    'clientService': ClientService()
  };

  view.render(context);
  exit(0);
}

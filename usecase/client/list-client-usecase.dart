import '../../app/domain/client/client-service.dart';
import '../utils/constantsUtils.dart';

class ClientListUseCase {
  execute(Map<String, dynamic> context) {
    ClientService service = context[constantsUtils.CLIENT_SERVICE];
    return service.getAll;
  }
}

import '../../app/domain/client/client-service.dart';
import '../utils/constantsUtils.dart';

class ClientFindByIdUseCase {
  execute(Map<String, dynamic> context) {
    ClientService service = context[constantsUtils.CLIENT_SERVICE];
    int id = context[constantsUtils.SEARCH];
    return service.getById(id);
  }
}

import '../../app/domain/client/client-service.dart';
import '../utils/constantsUtils.dart';

class ClientFindByNameUseCase {
  execute(Map<String, dynamic> context) {
    ClientService service = context[constantsUtils.CLIENT_SERVICE];
    String search = context[constantsUtils.SEARCH];
    return service.getByName(search);
  }
}

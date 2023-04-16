import '../../app/domain/client/client-service.dart';
import '../utils/constantsUtils.dart';

class ClientDeleteUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context[constantsUtils.DATA];

    int id = data[constantsUtils.ID];

    ClientService service = context[constantsUtils.CLIENT_SERVICE];
    service.deleteById(id);
  }
}

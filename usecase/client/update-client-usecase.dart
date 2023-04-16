import '../../app/domain/address/address-entity.dart';
import '../../app/domain/client/client-entity.dart';
import '../../app/domain/client/client-service.dart';
import '../utils/constantsUtils.dart';

class ClientUpdateUseCase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context[constantsUtils.DATA];

    int id = data[constantsUtils.ID];

    int number = data[constantsUtils.NUMBER] ?? 0;
    String cep = data[constantsUtils.CEP] ?? '';
    String cpf = data[constantsUtils.CPF] ?? '';
    String name = data[constantsUtils.NAME] ?? '';
    String city = data[constantsUtils.CITY] ?? '';
    String neighborhood = data[constantsUtils.NEIGHBORHOOD] ?? '';
    String street = data[constantsUtils.STREET] ?? '';
    String complement = data[constantsUtils.COMPLEMENT] ?? '';

    Address address = Address(
        city: city,
        neighborhood: neighborhood,
        street: street,
        number: number,
        cep: cep,
        complement: complement);

    ClientService service = context[constantsUtils.CLIENT_SERVICE];
    service.update(Client(id, cpf, name, address));
  }
}

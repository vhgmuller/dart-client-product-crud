import '../../../app/domain/client/client-entity.dart';
import '../../../usecase/client/list-client-usecase.dart';
import '../view.dart';

class ListClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('- Lista de Clientes -');

    List<Client> clients = ClientListUseCase().execute({...context});

    for (Client client in clients) {
      print('\n${client.id}\nNome: ${client.name};\nCPF: ${client.cpf};');
    }
  }
}

import 'dart:io';

import '../../../app/domain/client/client-entity.dart';
import '../../../usecase/client/find-by-name-client-usecase.dart';
import '../view.dart';

class ClientFindByNameView extends View {
  @override
  render(Map<String, dynamic> context) {
    print('- Pesquisar Clientes -');

    Stdin terminal = context['terminal'];

    print('Cliente:');
    var search = terminal.readLineSync() ?? '';

    List<Client> clients =
        ClientFindByNameUseCase().execute({...context, 'search': search});

    if (clients.isEmpty) {
      print('Não foram encontrados clientes com o nome informado...');
    } else {
      for (Client client in clients) {
        print('${client.id}, ${client.name}');
      }
    }
  }
}

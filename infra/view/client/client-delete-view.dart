import 'dart:io';

import '../../../app/domain/client/client-entity.dart';
import '../../../usecase/client/delete-client-usecase.dart';
import '../../../usecase/client/find-by-id-client-usecase.dart';
import '../view.dart';

class DeleteClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('- Deletar Cliente -');

    print('\nInforme o ID do cliente que deseja deletar:');
    var search = int.parse(terminal.readLineSync()!);

    Client? client =
        ClientFindByIdUseCase().execute({...context, 'search': search});

    if (client == null) {
      print('\nNão foram encontrados clientes com o ID informado...');
    } else {
      Map<String, int> data = {'id': client.id};

      ClientDeleteUseCase().execute({...context, 'data': data});
    }
  }
}

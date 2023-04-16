import 'dart:io';

import '../../../usecase/client/update-client-usecase.dart';
import '../../../app/domain/client/client-entity.dart';
import '../../../usecase/client/find-by-name-client-usecase.dart';
import '../utils/input-utils.dart';
import '../view.dart';

class UpdateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('- Atualizar Cliente -');

    print('\nInforme o nome do cliente que deseja atualizar:');
    var search = terminal.readLineSync() ?? '';

    List<Client> clients =
        ClientFindByNameUseCase().execute({...context, 'search': search});

    if (clients.isEmpty) {
      print('\nNão foram encontrados clientes com o nome informado...');
    } else {
      int number;
      String cep;
      String name;
      String cpf;
      String city;
      String neighborhood;
      String street;
      String complement;

      for (Client client in clients) {
        int id = client.id;
        print('\n${client.name} -');
        print(
            'Agora, informe apenas os campos que deseja ter a informação atualizada:');
        print('\nNovo nome:');
        name = terminal.readLineSync() ?? '';

        if (name == '') {
          name = client.name;
        }

        print('CPF (apenas números, 11 caracteres):');
        cpf = InputUtils.validadeCPF(terminal.readLineSync() ?? '');

        if (cpf == '') {
          cpf = client.cpf;
        }

        print('Endereço -');
        print('Cidade:');
        city = terminal.readLineSync() ?? '';

        if (city == '') {
          city = client.address!.city;
        }

        print('Bairro:');
        neighborhood = terminal.readLineSync() ?? '';

        if (neighborhood == '') {
          neighborhood = client.address!.neighborhood;
        }

        print('Rua:');
        street = terminal.readLineSync() ?? '';

        if (street == '') {
          street = client.address!.street;
        }

        print('Complemento (opcional):');
        complement = terminal.readLineSync() ?? '';

        if (complement == '') {
          complement = client.address!.complement;
        }

        print('Número:');
        number = InputUtils.validadeInt(terminal.readLineSync());

        if (number == '') {
          number = client.address!.number;
        }

        print('CEP:');
        cep = InputUtils.validadeCEP(terminal.readLineSync() ?? '');

        if (cep == '') {
          cep = client.address!.cep;
        }

        Map<String, dynamic> data = {
          'id': id,
          'name': name,
          'cpf': cpf,
          'city': city,
          'neighborhood': neighborhood,
          'street': street,
          'complement': complement,
          'number': number,
          'cep': cep
        };

        ClientUpdateUseCase().execute({...context, 'data': data});
      }
    }
  }
}

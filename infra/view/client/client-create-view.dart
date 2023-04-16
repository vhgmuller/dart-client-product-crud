import 'dart:io';

import '../../../usecase/client/create-client-usecase.dart';
import '../utils/input-utils.dart';
import '../view.dart';

class CreateClientView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    int number;
    String cep;
    String name;
    String cpf;
    String city;
    String neighborhood;
    String street;
    String complement;

    print('- Novo Cliente -');

    do {
      print('\nNome (pelo menos 3 caracteres):');
      name = terminal.readLineSync() ?? '';
    } while (name.length < 3);

    do {
      print('CPF (apenas números, 11 caracteres):');
      cpf = InputUtils.validadeCPF(terminal.readLineSync() ?? '');
    } while (cpf.toString().length < 11);

    print('Endereço -');
    do {
      print('Cidade:');
      city = terminal.readLineSync() ?? '';
    } while (city.length < 3);

    do {
      print('Bairro:');
      neighborhood = terminal.readLineSync() ?? '';
    } while (neighborhood.length < 3);

    do {
      print('Rua:');
      street = terminal.readLineSync() ?? '';
    } while (street.length < 3);

    do {
      print('Complemento (opcional):');
      complement = terminal.readLineSync() ?? '';
    } while (complement.length < 3);

    do {
      print('Número:');
      number = InputUtils.validadeInt(terminal.readLineSync());
    } while (number <= 0);

    do {
      print('CEP:');
      cep = InputUtils.validadeCEP(terminal.readLineSync() ?? '');
    } while (cep.toString().length < 8);

    Map<String, dynamic> data = {
      'name': name,
      'cpf': cpf,
      'city': city,
      'neighborhood': neighborhood,
      'street': street,
      'complement': complement,
      'number': number,
      'cep': cep
    };

    ClientCreateUseCase().execute({...context, 'data': data});
  }
}

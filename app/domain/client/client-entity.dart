import '../address/address-entity.dart';

class Client {
  int _id = 0;
  String _cpf = '';
  String _name = '';
  Address? _address;

  //Exemplo de construtor utilizando {}
  Client(int id, String cpf, String name, Address address) {
    this._id = id;
    this._cpf = cpf;
    this._name = name;
    this._address = address;
  }

  int get id => _id;

  void set id(int id) {
    this._id = id;
  }

  String get cpf => _cpf;

  void set cpf(String cpf) {
    this._cpf = cpf;
  }

  String get name => _name;

  void set name(String name) {
    this._name = name;
  }

  Address? get address => _address;

  void set address(Address? address) {
    this._address = address;
  }
}

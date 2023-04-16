import 'package:collection/collection.dart';

import 'client-entity.dart';

class ClientService {
  int _idController = 0;

  final List<Client> _clients = [];

  void insert(Client client) {
    client.id = _idController;
    _clients.add(client);
    upgradeIdController();
  }

  void deleteById(int id) {
    _clients.removeWhere((listClient) => listClient.id == id);
  }

  void update(Client client) {
    _clients[getClientArrayPositionById(client.id)] = client;
  }

  List<Client> get getAll => _clients;

  Client? getById(int id) {
    return _clients.firstWhereOrNull((client) => client.id == id);
  }

  List<Client> getByName(String name) {
    return _clients
        .where((client) =>
            client.name.toLowerCase().startsWith(name.toLowerCase()))
        .toList();
  }

  int getClientArrayPositionById(int id) {
    int position = 0;
    for (int i = 0; _clients[position].id != id; i++) {
      position++;
    }
    return position;
  }

  void upgradeIdController() {
    this._idController++;
  }
}

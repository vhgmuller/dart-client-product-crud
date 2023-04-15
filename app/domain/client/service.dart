import 'package:collection/collection.dart';
import 'entity.dart';

class ContactService {
  final List<Contact> _contacts;

  ContactService() : _contacts = [];

  void insert(Contact contact) {
    _contacts.add(contact);
  }

  void delete(Contact contact) {
    _contacts.removeWhere((listContact) => listContact.id == contact.id);
  }

  void update(Contact contact) {
    _contacts[getContactPositionById(contact.id)] = contact;
  }

  List<Contact> get findAll => _contacts;

  Contact? findById(int id) {
    return _contacts.firstWhereOrNull((contact) => contact.id == id);
  }

  List<Contact> findByName(String name) {
    return _contacts
        .where((contact) =>
            contact.name.toLowerCase().startsWith(name.toLowerCase()))
        .toList();
  }

  int getContactPositionById(int id) {
    int position = 0;
    for (int i = 0; _contacts[position].id != id; i++) {
      position++;
    }
    return position;
  }
}

void main() {
  var service = ContactService();

  print(service._contacts.length);
  service.insert(Contact(1, 'João', 'joao@email.com', '123'));
  service.insert(Contact(2, 'Maria', 'maria@email.com', '123'));
  service.insert(Contact(3, 'Ana', 'ana@email.com', '123'));
  print(service._contacts.length);
  print(service.findAll);

  service.delete(Contact(2, 'Maria', 'maria@email.com', '123'));
  print(service._contacts.length);

  service.update(Contact(3, 'Ana', 'ana@gmail.com', '123'));
  print(service.findByName('Ana'));

  var contacts = service.findByName("maria");
  print(contacts);
}

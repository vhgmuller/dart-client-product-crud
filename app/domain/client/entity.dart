class Client {
  int _id;
  String _name;
  String _email;
  String _phone;

  Contact(this._id, this._name, this._email, this._phone);

  int get id => _id;

  String get name => _name;

  void set name(String name) {
    this._name = name;
  }

  String get email => _email;

  void set email(String email) {
    this._email = email;
  }

  String get phone => _phone;

  void set phone(String phone) {
    this._phone = phone;
  }
}

class Address {
  int _number = 0;
  String _cep = '';
  String _city = '';
  String _complement = '';
  String _neighborhood = '';
  String _street = '';

  //Exemplo de construtor utilizando {}
  Address(
      {required String city,
      required String neighborhood,
      required String street,
      required String cep,
      required int number,
      String complement = ''}) {
    this._city = city;
    this._neighborhood = neighborhood;
    this._street = street;
    this._number = number;
    this._cep = cep;
    this._complement = complement;
  }

  String get cep => _cep;

  void set cep(String cep) {
    this._cep = cep;
  }

  int get number => _number;

  void set number(int number) {
    this._number = number;
  }

  String get city => _city;

  void set city(String city) {
    this._city = city;
  }

  String get complement => _complement;

  void set complement(String complement) {
    this._complement = complement;
  }

  String get neighborhood => _neighborhood;

  void set neighborhood(String neighborhood) {
    this._neighborhood = neighborhood;
  }

  String get street => _street;

  void set street(String street) {
    this._street = street;
  }
}

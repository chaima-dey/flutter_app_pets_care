class Pet {
  int _id;
  String _name;
  String _type;
  String _gender;
  String _race;
  String _birthDate;
  String _color;
  String _description;
  String _photo;
  int _idUser;

  Pet(this._id, this._name, this._type, this._gender, this._race,
      this._birthDate, this._color, this._description, this._photo,
      this._idUser);

  int get idUser => _idUser;

  set idUser(int value) {
    _idUser = value;
  }

  String get photo => _photo;

  set photo(String value) {
    _photo = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get color => _color;

  set color(String value) {
    _color = value;
  }

  String get birthDate => _birthDate;

  set birthDate(String value) {
    _birthDate = value;
  }

  String get race => _race;

  set race(String value) {
    _race = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  String get type => _type;

  set type(String value) {
    _type = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}
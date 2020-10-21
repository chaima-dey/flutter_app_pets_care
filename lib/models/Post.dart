 class Post {
  int _id;
  String _subject;
  String _content;
  String _date;
  int _id_user;

  Post(this._id, this._subject, this._content, this._date, this._id_user);

  int get id_user => _id_user;

  set id_user(int value) {
    _id_user = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  String get subject => _subject;

  set subject(String value) {
    _subject = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


 }


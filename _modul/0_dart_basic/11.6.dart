class _User {}

class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    }
  }

  _saveUser() {}
  _deleteUser() {}
  _exportUser() {}
  _importUser() {}
}

void main() {
  _User user = _User();
  Person person = Person('John', 30);
  person._name = "deny";
  print('Nama: ${person.name}');
  print('Usia: ${person.age} tahun');
  person.age = 35; // Mengubah usia dengan setter
  print('Usia setelah perubahan: ${person.age} tahun');
}

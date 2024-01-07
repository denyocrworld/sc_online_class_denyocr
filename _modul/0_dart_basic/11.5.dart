class Person {
  String _name;

  Person(this._name);

  String get name => _name;

  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  setName(String newName) {
    _name = newName;
  }
}

void main() {
  Person person = Person('John');
  person.name = 'Doe'; // Memanggil setter
  print('Nama: ${person.name}');
}

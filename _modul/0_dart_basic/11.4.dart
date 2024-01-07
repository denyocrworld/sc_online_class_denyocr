class Person {
  String _name;

  Person(this._name);

  String get name => _name;

  String getName() {
    return _name;
  }
}

void main() {
  Person person = Person('John');
  print('Nama: ${person.name}');
  print('Nama: ${person.getName()}');
}

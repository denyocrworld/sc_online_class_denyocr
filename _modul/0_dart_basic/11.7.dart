class Animal {
  void makeSound() {
    print('Hewan membuat suara');
  }

  String warnaBulu = "Hitam";
}

class Dog extends Animal {
  @override
  String warnaBulu = "Putih";

  @override
  void makeSound() {
    print('Anjing menggonggong');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Kucing mengeong');
  }
}

void main() {
  Dog dog = Dog();
  print(dog.warnaBulu);
}

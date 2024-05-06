void main() {
  var dog = Dog('мясо', 'дом', 'Алабай');
  dog.makeNoise();
  dog.eat();
  dog.sleep();
  print('Порода собаки: ${dog.breed}\n');

  var cat = Cat('рыба', 'дом', 9);
  cat.makeNoise();
  cat.eat();
  cat.sleep();
  print('Количество жизней кошки: ${cat.lives}\n');

  var horse = Horse('сено', 'стойло', 'Бешбармак');
  horse.makeNoise();
  horse.eat();
  horse.sleep();
  print('Порода лошади: ${horse.breed}\n');

///////////////////////////////////////////////////////////////////////////////

  var student = Student('Бакыт', 'Акылбеков', 'Пи 3-19', 1.5);
  var aspirant =
      Aspirant('Дастан', 'Темирбеков', 'Пи 3-10', 5, 'Методы оптимизации');

  print('Студент ${student.firstName} ${student.lastName}');
  print('Средняя оценка: ${student.averageMark}');
  print('Стипендия: ${student.getScholarship()} сом\n');

  print('Аспирант ${aspirant.firstName} ${aspirant.lastName}');
  print('Средняя оценка: ${aspirant.averageMark}');
  print('Стипендия: ${aspirant.getScholarship()} сом');
}

class Animal {
  String food;
  String location;

  Animal(this.food, this.location);

  void makeNoise() {
    print('Животное издает звук');
  }

  void eat() {
    print('Животное ест $food');
  }

  void sleep() {
    print('Животное спит');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String food, String location, this.breed) : super(food, location);

  @override
  void makeNoise() {
    print('Собака лает');
  }

  @override
  void eat() {
    print('Собака ест $food');
  }
}

class Cat extends Animal {
  int lives;

  Cat(String food, String location, this.lives) : super(food, location);

  @override
  void makeNoise() {
    print('Кошка мяукает');
  }

  @override
  void eat() {
    print('Кошка ест $food');
  }
}

class Horse extends Animal {
  String breed;

  Horse(String food, String location, this.breed) : super(food, location);

  @override
  void makeNoise() {
    print('Лошадь ржет');
  }

  @override
  void eat() {
    print('Лошадь ест $food');
  }
}

////////////////////////////////////////////////////////////////////////////////

class Student {
  String firstName;
  String lastName;
  String group;
  double averageMark;

  Student(this.firstName, this.lastName, this.group, this.averageMark);

  double getScholarship() {
    return (averageMark == 5) ? 20000 : 0;
  }
}

class Aspirant extends Student {
  String scientificWork;

  Aspirant(String firstName, String lastName, String group, double averageMark,
      this.scientificWork)
      : super(firstName, lastName, group, averageMark);

  @override
  double getScholarship() {
    return (averageMark == 5) ? 40000 : 18000;
  }
}

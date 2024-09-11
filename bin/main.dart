

void main() {
  var dog = Dog("Tom", 12.0);
  dog.run();
}

abstract class Animal {
  String name;
  double speed;

  Animal(this.name, this.speed);

  void run();
}

mixin CanRun on Animal{

  @override
  void run()=> print("$name is running at speed $speed");
}
class Dog extends Animal with CanRun{
  Dog(String name, double speed): super(name, speed);
}
import 'dart:math';

int doSomeDamage(int value) {
  int damage = value * Random().nextInt(10);

  return damage;
}

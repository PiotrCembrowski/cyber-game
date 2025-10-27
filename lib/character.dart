import 'helpers.dart' show doSomeDamage;

class Character {
  String name;
  String characterClass;
  int level = 0;
  int experience = 0;
  int? health;
  int? strength;
  int? intelligence;
  int? stamina;
  int? dexterity;
  int damage = 2;

  Character(this.name, this.characterClass);

  // Methods
  void describe() {
    var characterClass = this.characterClass;
    var health = this.health;
    var strength = this.strength;
    var intelligence = this.intelligence;
    var stamina = this.stamina;
    var dexterity = this.dexterity;

    if (characterClass == 'warrior') {
      characterClass = 'warrior';
      health = 15;
      strength = 15;
      intelligence = 5;
      stamina = 10;
      dexterity = 10;
    }
    ;

    if (characterClass == 'bruiser') {
      characterClass = 'bruiser';
      health = 20;
      strength = 20;
      intelligence = 5;
      stamina = 5;
      dexterity = 5;
    }
    ;

    if (characterClass == 'infiltrator') {
      characterClass = 'infiltrator';
      health = 10;
      strength = 10;
      intelligence = 10;
      stamina = 15;
      dexterity = 15;
    }
    ;

    if (characterClass == 'engineer') {
      characterClass = 'engineer';
      health = 10;
      strength = 10;
      intelligence = 20;
      stamina = 10;
      dexterity = 5;
    }
    ;

    if (characterClass == 'shooter') {
      characterClass = 'shooter';
      health = 10;
      strength = 10;
      intelligence = 5;
      stamina = 10;
      dexterity = 20;
    }
    ;

    if (characterClass == 'generalist') {
      characterClass = 'generalist';
      health = 15;
      strength = 10;
      intelligence = 10;
      stamina = 10;
      dexterity = 10;
    }
    ;

    print(
      "Character: $name, $characterClass, $health, $strength, $intelligence, $stamina, $dexterity",
    );
  }

  // *   Blasters are strong against Bruisers.
  // * Advantage against Bruisers: Blasters get a guaranteed critical hit and ignore the Bruiser's defense. They also gain "Focused Attacks" when attacking or being attacked by Bruisers.
  // * Weakness against Tacticians: Blasters take increased damage from Tacticians.
  // * Bruisers are strong against Scrappers.
  // * Advantage against Scrappers: Bruisers gain "Enraged," which increases their stats when attacking or being attacked by Scrappers.
  // * Weakness against Blasters: Blasters get a guaranteed critical hit and ignore the Bruiser's defense when attacking them.
  // * Scrappers are strong against Infiltrators.
  // * Advantage against Infiltrators: Scrappers perform a free follow-up attack after hitting an Infiltrator.
  // * Weakness against Bruisers: Scrappers take increased damage from Bruisers.
  // * Infiltrators are strong against Tacticians.
  // * Advantage against Tacticians: Infiltrators can counter-attack when targeted by a Tactician. They also gain "Combat Reflexes" and increased accuracy.
  // *Weakness against Scrappers: Infiltrators take increased damage from Scrappers.
  // *Tacticians are strong against Blasters.
  // *Advantage against Blasters: Tacticians gain "Tactical Maneuvers" when attacking or being attacked by Blasters. This allows them to take reduced damage from Blasters.
  // *Weakness against Infiltrators: Tacticians are vulnerable to Infiltrator attacks.
  // *Generalists have no class strengths or weaknesses.

  void damageMultiplier(classOne, classTwo, action) {
    var damage = this.damage;

    if (classOne == 'shooter' &&
        classTwo == 'tactician' &&
        action == 'shooterAttack') {
      var value = damage * 2;
      doSomeDamage(value);
    }

    if (classOne == 'shooter' &&
        classTwo == 'tactician' &&
        action == 'tacticianAttack') {
      var value = damage * 2;
      doSomeDamage(value);
    }

    if (classOne == 'bruiser' &&
        classTwo == 'shooter' &&
        action == 'shooterAttack') {
      var value = damage * 2;
      doSomeDamage(value);
    }

    if (classOne == 'bruiser' &&
        classTwo == 'shooter' &&
        action == 'bruiserAttack') {
      var value = damage * 2;
      doSomeDamage(value);
    }

    if (classOne == 'infiltrator' &&
        classTwo == 'warrior' &&
        action == 'infiltratorAttack') {
      var value = damage * 2;
      doSomeDamage(value);
      doSomeDamage(value);
    }

    if (classOne == 'warrior' &&
        classTwo == 'bruiser' &&
        action == 'warriorAttack') {
      var value = damage ~/ 2;
      doSomeDamage(value);
    }

    if (classOne == 'warrior' &&
        classTwo == 'bruiser' &&
        action == 'bruiserAttack') {
      var value = damage * 2;
      doSomeDamage(value);
    }

    if (classOne == 'tactician' &&
        classTwo == 'infiltrator' &&
        action == 'infiltratorAttack') {
      var value = damage * 2;
      doSomeDamage(value);
    }

    if (classOne == 'tactician' &&
        classTwo == 'shooter' &&
        action == 'tacticianAttack') {
      var value = damage ~/ 2;
      doSomeDamage(value);
    }
  }
}

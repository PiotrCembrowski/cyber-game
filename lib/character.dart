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

    Character(this.name, this.characterClass)

    // Method
    void describe() {


      var characterClass = this.characterClass;
      var health = this.health;
      var strength = this.strength;
      var intelligence = this.intelligence;
      var stamina = this.stamina;
      var dexterity = this.dexterity;

      
      if(characterClass == 'warrior') {
        characterClass = 'warrior';
        health = 15;
        strength = 15;
        intelligence = 5;
        stamina = 10;
        dexterity = 10;
      };

      if(characterClass == 'bruiser') {
        characterClass = 'bruiser';
        health = 20;
        strength = 20;
        intelligence = 5;
        stamina = 5;
        dexterity = 5;
      };

      if(characterClass == 'infiltrator') {
        characterClass = 'infiltrator';
        health = 10;
        strength = 10;
        intelligence = 10;
        stamina = 15;
        dexterity = 15;
      };

      if(characterClass == 'engineer') {
        characterClass = 'engineer';
        health = 10;
        strength = 10;
        intelligence = 20;
        stamina = 10;
        dexterity = 5;
      };

      if(characterClass == 'shooter') {
        characterClass = 'shooter';
        health = 10;
        strength = 10;
        intelligence = 5;
        stamina = 10;
        dexterity = 20;
      };

      if(characterClass == 'generalist') {
        characterClass = 'generalist';
        health = 15;
        strength = 10;
        intelligence = 10;
        stamina = 10;
        dexterity = 10;
      };


      print("Character: $name, $characterClass, $health, $strength, $intelligence, $stamina, $dexterity");
    }
  }


void main() {
  
};
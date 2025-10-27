  class Character {
    String name;
    String character_class; 
    int level = 0;
    int expierence = 0;
    int? health;
    int? strength;
    int? intelligence;
    int? stamina;
    int? dexterity;

    Character(this.name, this.character_class)

    // Method
    void describe() {


      var character_class = this.character_class;
      var health = this.health;
      var strength = this.strength;
      var intelligence = this.intelligence;
      var stamina = this.stamina;
      var dexterity = this.dexterity;

      
      if(character_class == 'warrior') {
        character_class = 'warrior';
        health = 15;
        strength = 15;
        intelligence = 5;
        stamina = 10;
        dexterity = 10;
      };

      if(character_class == 'bruiser') {
        character_class = 'bruiser';
        health = 20;
        strength = 20;
        intelligence = 5;
        stamina = 5;
        dexterity = 5;
      };

      if(character_class == 'infiltrator') {
        character_class = 'infiltrator';
        health = 10;
        strength = 10;
        intelligence = 10;
        stamina = 15;
        dexterity = 15;
      };

      if(character_class == 'engineer') {
        character_class = 'engineer';
        health = 10;
        strength = 10;
        intelligence = 20;
        stamina = 10;
        dexterity = 5;
      };

      if(character_class == 'shooter') {
        character_class = 'shooter';
        health = 10;
        strength = 10;
        intelligence = 5;
        stamina = 10;
        dexterity = 20;
      };

      if(character_class == 'generalist') {
        character_class = 'generalist';
        health = 15;
        strength = 10;
        intelligence = 10;
        stamina = 10;
        dexterity = 10;
      };


      print("Character: $name, $character_class, $health, $strength, $intelligence, $stamina, $dexterity");
    }
  }


void main() {
  
};
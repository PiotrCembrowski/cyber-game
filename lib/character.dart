  class Character {
    String name;
    String profession; 
    int level = 0;
    int expierence = 0;
    int? health;
    int? strength;
    int? intelligence;
    int? stamina;
    int? dexterity;

    Character(this.name, this.profession)

    // Method
    void describe() {


      var profession = this.profession;
      var health = this.health;
      var strength = this.strength;
      var intelligence = this.intelligence;
      var staming = stamina;
      var dexterity = this.dexterity;

      
      if(profession == 'warrior') {
        profession = 'warrior';
        health = 15;
        strength = 15;
        intelligence = 5;
        stamina = 10;
        dexterity = 10;
      }

      if(profession == 'bruiser') {
        profession = 'bruiser';
        health = 15;
        strength = 15;
        intelligence = 5;
        stamina = 10;
        dexterity = 10;
      }

      print("Character: $name, $profession, $health, $strength, $intelligence, $stamina, $dexterity");
    }
  };
void main() {
  
};
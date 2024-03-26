class puppy {
  String name = ""; // name of the dog
  String breed = ""; // breed of the dog
  int age = 0; // age of the dog
  int weight = 0; // the dogs weight
  String photoLink = "";  // an asset link to the profile pic

  // constructor
  puppy(String name, String breed, int age, int weight) {
    this.name = name;
    this.breed = breed;
    this.age = age;
    this.weight = weight;
    // TODO: Set all of the lesson arrays to false. Not set yet because we do not know how many lessons 
    // we will have.
  }

  // getters and setters
  String getName() {
    return name; 
  }

  String getBreed() {
    return breed; 
  }

  int getAge() {
    return age; 
  }
  

  String getPhoto() {
    return photoLink;
  }

  int getWeight() {
    return weight;
  }

  void setName(String name) {
    this.name = name;
  }

  void setBreed(String breed) {
    this.breed = breed;
  }

  void setAge(int age) {
    this.age = age;
  }


  void setWeight(int weight) {
    this.weight = weight;
  }

}
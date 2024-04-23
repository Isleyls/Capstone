import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class puppy {
  late String name; // name of the dog
  late String breed; // breed of the dog
  late int age; // age of the dog
  late int weight; // the dogs weight
  String photoLink = "";
  String imagePath; // an asset link to the profile pic

  // constructor
  puppy({
    required this.name,
    required this.breed,
    required this.age,
    required this.weight,
    required this.imagePath,
  });

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

  void setImagePath(String newImagePath) {
    imagePath = newImagePath;
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

  // Generate method to deserialize from JSON
  factory puppy.fromJson(Map<String, dynamic> json) => 
    puppy(
      name: json['name'], 
      breed: json['breed'], 
      age: json['age'], 
      weight: json['weight'],
      imagePath: json['imagePath'],
      );

  Map<String, dynamic> toJson() => {
    'name' : name,
    'breed' : breed, 
    'age' : age,
    'weight' : weight,
    'imagePath': imagePath
  };
    

  // Generate method to serialize to JSON

}


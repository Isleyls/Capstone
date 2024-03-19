import "package:flutter/material.dart";
import "package:pup_iq/puppy.dart";
import 'package:localstorage/localstorage.dart';

class PuppyService extends ChangeNotifier {

  static LocalStorage storage = LocalStorage("puppies.json");
  
  // might change from static with a singleton
  static List<puppy> puppyList = [
    puppy("Tobias", "Corgi", 0, 10),
    puppy("steve", "german", 0, 10)
  ];

  static void addPuppy(String name, String breed, String age, String weight) {
    puppyList.add(puppy(name, breed, int.parse(age), int.parse(weight)));
  }


  static void saveList() {
    storage.setItem("puppyList", puppyList);
  }

  static List<puppy> getFromStorage() {
    return storage.getItem("puppyList");
  }


  puppy getPuppy(int index) {
    return puppyList[index];
  }

  // Returns the list of dogs
  static List<puppy> getData() {
    return puppyList;
  }

  // Sets the list of dogs
  void setData(List<puppy> newList) {
    puppyList = newList;
  }

  // Edits the name
  void editName(puppy toEdit, String newName) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setName(newName);
    }
  }

  // edits the weight
  void editWeight(puppy toEdit, String newWeight) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setWeight(int.parse(newWeight));
    }
  }

  // edits the Breed
  void editBreed(puppy toEdit, String newBreed) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setBreed(newBreed);
    }
  }

  // edits the Age
  void editAge(puppy toEdit, String newAge) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setAge(int.parse(newAge));
    }
  }
}
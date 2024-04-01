import "package:flutter/material.dart";
import "package:localstorage/localstorage.dart";
import "package:pup_iq/puppy.dart";


/*
* This is a service designed to manage the List of puppy profiles.
*/
class PuppyService extends ChangeNotifier {
  List<puppy> puppyList = [
    puppy("Tobias", "Corgi", 0, 10)
  ];

  final LocalStorage storage = new LocalStorage("user_data");


  //TODO; make a default constructor that gets profiles from local storage. 
  PuppyService() {
    puppyList = storage.getItem("puppies");

  }


  void addPuppy(String name, String breed, String age, String weight) {
    puppyList.add(puppy(name, breed, int.parse(age), int.parse(weight)));
    storage.setItem("puppies", puppyList);
  }

  puppy getPuppy(int index) {
    return puppyList[index];
  }

  // Returns the list of dogs
  List<puppy> getData() {
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
      storage.setItem("puppies", puppyList);
    }
  }

  // edits the weight
  void editWeight(puppy toEdit, String newWeight) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setWeight(int.parse(newWeight));
      storage.setItem("puppies", puppyList);
    }
  }

  // edits the Breed
  void editBreed(puppy toEdit, String newBreed) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setBreed(newBreed);
      storage.setItem("puppies", puppyList);

    }
  }

  // edits the Age
  void editAge(puppy toEdit, String newAge) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setAge(int.parse(newAge));
      storage.setItem("puppies", puppyList);
    }
  }
}
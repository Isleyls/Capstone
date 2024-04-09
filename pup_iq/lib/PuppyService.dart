import "package:flutter/material.dart";
import "package:localstorage/localstorage.dart";
import "package:pup_iq/puppy.dart";


/*
* This is a service designed to manage the List of puppy profiles.
*/
class PuppyService extends ChangeNotifier {
  // List to store profiles
  List<puppy> puppyList = [];
  
  // helps us save profiles for persistent app uses
  final LocalStorage storage = LocalStorage("user_data");

  // A default constructor that gets profiles from local storage. 
  PuppyService() {
    var storedList = storage.getItem("puppies");


    if (storedList != null) {
      puppyList = storage.getItem("puppies");
    }
  }

  // Used in the profilepAge
  puppy getAProfile() {
    if (puppyList.isEmpty) {
      return new puppy(name : "No Profiles Present", breed: "No Profiles Present", age : 0, weight : 0); 
    }
    else {
      return puppyList.first;
    }
  }


  // Adds a puppy to the puppyList
  void addPuppy(String name, String breed, String age, String weight) {
    puppyList.add(puppy(name : name, breed : breed, age : int.parse(age), weight : int.parse(weight)));

    saveList();
  }

  // Removes a puppy from the list
  void deletePuppy(puppy toDelete) {
    puppyList.remove(toDelete);

    saveList();
  }

  // gets a puppy from the puppyList
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
      saveList();
    }
  }

  // edits the weight
  void editWeight(puppy toEdit, String newWeight) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setWeight(int.parse(newWeight));
      saveList();
    }
  }

  // edits the Breed
  void editBreed(puppy toEdit, String newBreed) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setBreed(newBreed);
      saveList();
    }
  }

  // edits the Age
  void editAge(puppy toEdit, String newAge) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setAge(int.parse(newAge));
      saveList();
    }
  }

  // Saves the current puppyList to local storage, to be done on any change
  void saveList() { //TODO needs testing on a phone maybe?

    storage.setItem('items', puppyList.map((puppy) => puppy.toJson()).toList());

  }
  
}
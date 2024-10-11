import 'package:flutter/material.dart';

class PetProvider with ChangeNotifier {
  String userName = "Kristin Watson";
  String userEmail = "watson_kristy@gmail.com";
  List<Map<String, String>> pets = [
    {"name": "Charlie", "type": "American Pit Bull Terrier"},
    {"name": "Roxy", "type": "Norwegian Forest cat"},
  ];

  void addPet(String name, String type) {
    pets.add({"name": name, "type": type});
    notifyListeners();
  }
}

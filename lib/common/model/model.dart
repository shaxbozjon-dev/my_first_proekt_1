import 'dart:convert';

import 'package:flutter/material.dart';

class PersonModel {
  String name;
  String phoneNumber;
  String password;

  PersonModel(
      {required this.name, required this.password, required this.phoneNumber});

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'password': password,
    };
  }

  factory PersonModel.fromJson(Map<String, Object?> json) {
    return PersonModel(
        name: json['name'] as String,
        password: json['phoneNumber'] as String,
        phoneNumber: json['phonenumber'] as String);
  }
  @override
  String toString() {
    // TODO: implement toString
    return "Name:$name phonnumber $phoneNumber";
  }
}
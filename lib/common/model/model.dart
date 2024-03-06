import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class PersonModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(0)
  String phoneNumber;
  @HiveField(1)
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
    return "Name:$name phonnumber $phoneNumber pasword $password";
  }


}

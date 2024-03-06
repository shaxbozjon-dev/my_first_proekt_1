import 'package:hive/hive.dart';
import 'package:pdaftar/common/model/model.dart';

class PersonAdapter extends TypeAdapter<PersonModel>{

  @override
  final int typeId=0;
  @override
  PersonModel read(BinaryReader reader) {
    final name=reader.read()as String;
    final phoneNumber=reader.read()as String;
    final password=reader.read()as String;
    return PersonModel(name: name, password: password, phoneNumber: phoneNumber);
  }


  @override
  void write(BinaryWriter writer, PersonModel obj) {
    writer.write(obj.name);
    writer.write(obj.phoneNumber);
    writer.write(obj.password);

  }



}
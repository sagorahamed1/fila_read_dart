import 'dart:convert';
import 'dart:io';
import 'package:filereadwriting/person.dart';
import 'dart:convert';

void main()async{
  final fileName = "assets/file.json";
  var myFile = File(fileName);

  //reea file from file.
  myFile.readAsString().then((String value){
    var File = jsonDecode(value);

    List <Person> Persons = [];
    for(var map in File){
      var person = Person(name: map['name'], userId: map['userId'], id: map['id'], title: map['title'], address: map['address'], phoneNumber: map['phoneNumber']);
      Persons.add(person);

      Persons.forEach((p) {
        p.show();
      });
    }
  }
  );
}


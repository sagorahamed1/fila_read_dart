class Person{
  final String name;
  final int userId;
  final int id;
  final String title;
  final String address;
  final String phoneNumber;

  const Person({required this.name, required this.userId, required this.id, required this.title, required this.address, required this.phoneNumber});

  factory Person.fromMap(Map <String , dynamic> json){
    return Person(
        name: json['name'],
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        address: json ['address'],
        phoneNumber: json['phoneNumber']
    );

  }
  void show (){
    print(" Name: $name \n User Id: $userId \n Id: $id \n Title: $title \n Address: $address \n Phone Number: $phoneNumber");
    print('');
  }
}
import 'dart:async';

// model 对象
class Contact {
  final String fullName;

  final String email;

  const Contact({this.fullName,this.email});
}

abstract class ContactRepository{
  Future<List<Contact>> fetch();
}
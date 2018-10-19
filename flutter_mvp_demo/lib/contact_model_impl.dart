import 'dart:async';
import 'contact_model.dart';

// 实现model 对象
class MockContactRepository implements ContactRepository{

  @override
  Future<List<Contact>> fetch() {
    return new Future.value(kContacts);
  }
}

const kContacts = const<Contact>[
    const Contact(fullName: "Li bai",email: "libai@live.com"),
    const Contact(fullName: "Cheng yaojin",email: "chengyaojin@live.com"),
    const Contact(fullName: "Mi yue",email: "miyue@live.com"),
    const Contact(fullName: "A ke",email: "ake@live.com"),
    const Contact(fullName: "Lu ban",email: "luban@live.com"),
    const Contact(fullName: "Da qiao",email: "daqiao@live.com"),
    const Contact(fullName: "Hou yi",email: "houyi@live.com"),
    const Contact(fullName: "Liu bei",email: "liubei@live.com"),
    const Contact(fullName: "Wang zhaojun",email: "wangzhaoju@live.com"),
  ];
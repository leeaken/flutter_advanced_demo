import 'package:flutter/material.dart';
import 'package:flutter_mvp_demo/contact_model.dart';
import 'package:flutter_mvp_demo/contact_presenter_impl.dart';
import 'contract_presenter.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() {
    _ContactPageState view = _ContactPageState();
    ContractPresenter presenter = new ContractPresenter(view);
    presenter.init();

    return view;
  }
}

class _ContactPageState extends State<ContactPage> implements View {
  List<Contact> contacts = [];

  ContractPresenter _presenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _presenter.loadContacts();
  }

  Widget buildListTile(BuildContext context, Contact contact) {
    return new MergeSemantics(
      child: new ListTile(
        isThreeLine: true,
        dense: false,
        leading: new ExcludeSemantics(
            child: new CircleAvatar(
                child: new Text(contact.fullName.substring(0, 1)))),
        title: new Text(contact.fullName),
        subtitle: new Text(contact.email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text("MVP")
       ),
       body: ListView.builder(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        itemBuilder: (BuildContext context, int index) {
          return buildListTile(context, contacts[index]);
        },
        itemCount: contacts.length,
      )
    );
  }

  @override
  void onLoadContactsComplete(List<Contact> items) {
    // TODO: implement onLoadContactsComplete
    setState((){
      contacts = items;
      print("  contacts size  ${contacts.length}");
    });
  }

  @override
  void onLoadContactsError() {
    // TODO: implement onLoadContactsError
  }

  @override
  setPresenter(Presenter presenter) {
    // TODO: implement setPresenter

    _presenter = presenter;
  }
}

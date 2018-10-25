import 'package:flutter/material.dart';
import 'package:flutter_advanced/login/login_header_view.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding:false,
      // key: scaffoldState,
      backgroundColor: Colors.white,
      body: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new Container(
          child: Stack(
            fit: StackFit.expand,
            //alignment: Alignment(0.1, 0.3),
            children: <Widget>[
              new Container(
                alignment: Alignment.topCenter,
                child: LoginHeaderView('images/user_icon.png')
              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.only(
                    top: 190.0, right: 50.0, left: 50.0, bottom: 100.0),
                elevation: 11.0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 120,
                  child: new Container(
                    margin: new EdgeInsets.all(16.0),
                    child: ListView(
                      children: <Widget>[
                        new SizedBox(
                          height: 30.0,
                        ),
                        new TextField(
                          // onChanged: (phone) => _userPhone = phone,
                          // enabled: !snapshot.data,
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.black),
                          decoration: new InputDecoration(
                              hintText: 'please input you userName',
                              labelText: "User Name",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 13.0),
                              hintStyle: TextStyle(fontSize: 12.0)),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new TextField(
                          // onChanged: (world) => _passWold = world,
                          // enabled: !snapshot.data,
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.black),
                          decoration: new InputDecoration(
                              hintText: 'please input you password',
                              labelText: "User password",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 13.0),
                              hintStyle: TextStyle(fontSize: 12.0)),
                        ),
                        new SizedBox(
                          height: 50.0,
                        ),
                        Material(
                          elevation: 10.0,
                          color: Colors.transparent,
                          shape: const StadiumBorder(),
                          child: InkWell(
                            onTap: () {
                            
                            },
                            splashColor: Colors.grey,
                            child: Ink(
                              height: 40.0,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF4DD0E1),
                                  Color(0xFF00838F)
                                ],
                              )),
                              child: Center(
                                child: Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.5, 1.0),
              colors: <Color>[Colors.white, Color(0xFFD7CCC8)],
            ),
          ),
        ),
      ),
    );
  }
}

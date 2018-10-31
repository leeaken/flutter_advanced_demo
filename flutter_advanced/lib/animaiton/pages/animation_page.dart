import 'package:flutter/material.dart';
import 'package:flutter_advanced/utils/uidata.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {

  BuildContext _context;

  Widget _buildButton(Color color, String text, int tag) {

    return Container(
        padding: EdgeInsets.only(top:10.0),
        width: 300.0,
        // height: 50.0,
        child: FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
          splashColor: color,
          color: color,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                child: Text(text),
              ),
            ],
          ),
         onPressed: (){
           _loadClick(tag);
         },
    ));
  }

  void _loadClick(int tag) {

    if(tag == 1) {
      Navigator.pushNamed(_context, UIData.dotLoadingRoute);
    }
    print("click:$tag");
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
        appBar: AppBar(title: Text("动画列表")),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildButton(Colors.green, "Loading",1)
            ],
          ),
        ));
  }
}

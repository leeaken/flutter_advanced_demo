import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatelessWidget {
   final String title;
   final String url;

   WebViewPage({Key key, this.title, this.url}) : super(key: key);

//   @override
//   _WebViewPageState createState() => _WebViewPageState();
// }

// class _WebViewPageState extends State<WebViewPage> {

  // final flutterWebviewPlugin = new FlutterWebviewPlugin();

  // // On destroy stream
  // StreamSubscription _onDestroy;

  // // On urlChanged stream
  // StreamSubscription<String> _onUrlChanged;

  // // On urlChanged stream
  // StreamSubscription<WebViewStateChanged> _onStateChanged;

  // StreamSubscription<WebViewHttpError> _onHttpError;

  // StreamSubscription<double> _onScrollYChanged;

  // StreamSubscription<double> _onScrollXChanged;


  // final _scaffoldKey = new GlobalKey<ScaffoldState>();

  // final _history = [];
  // @override
  // void initState() {
  //   super.initState();

  //   flutterWebviewPlugin.close();

  //   // Add a listener to on destroy WebView, so you can make came actions.
  //   _onDestroy = flutterWebviewPlugin.onDestroy.listen((_) {
  //     if (mounted) {
  //       // Actions like show a info toast.
  //       _scaffoldKey.currentState.showSnackBar(
  //           const SnackBar(content: const Text('Webview Destroyed')));
  //     }
  //   });

  //   // Add a listener to on url changed
  //   _onUrlChanged = flutterWebviewPlugin.onUrlChanged.listen((String url) {
  //     if (mounted) {
  //       setState(() {
  //         _history.add('onUrlChanged: $url');
  //       });
  //     }
  //   });

  //   _onScrollYChanged =
  //       flutterWebviewPlugin.onScrollYChanged.listen((double y) {
  //     if (mounted) {
  //       setState(() {
  //         _history.add("Scroll in  Y Direction: $y");
  //       });
  //     }
  //   });

  //   _onScrollXChanged =
  //       flutterWebviewPlugin.onScrollXChanged.listen((double x) {
  //     if (mounted) {
  //       setState(() {
  //         _history.add("Scroll in  X Direction: $x");
  //       });
  //     }
  //   });

  //   _onStateChanged =
  //       flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state) {
  //     if (mounted) {
  //       setState(() {
  //         _history.add('onStateChanged: ${state.type} ${state.url}');
  //       });
  //     }
  //   });

  //   _onHttpError =
  //       flutterWebviewPlugin.onHttpError.listen((WebViewHttpError error) {
  //     if (mounted) {
  //       setState(() {
  //         _history.add('onHttpError: ${error.code} ${error.url}');
  //       });
  //     }
  //   });
  // }

  // @override
  // void dispose() {
  //   // Every listener should be canceled, the same should be done with this stream.
  //   _onDestroy.cancel();
  //   _onUrlChanged.cancel();
  //   _onStateChanged.cancel();
  //   _onHttpError.cancel();
  //   _onScrollXChanged.cancel();
  //   _onScrollYChanged.cancel();

  //   flutterWebviewPlugin.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: this.url,
      appBar: new AppBar(
        title: Text(this.title),
      ),
    );
  }
}
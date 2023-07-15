import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewScreen extends StatelessWidget {
  //const WebViewScreen({Key? key}) : super(key: key);
  final String url;
  WebViewScreen(this.url);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.arrow_back_ios,
          ),
        ),
      ),
      body: WebView(
        initialUrl:url ,
      ),
    );
  }
}

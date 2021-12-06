import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  final title;

  WebViewContainer(this.url, this.title);

  @override
  createState() => _WebViewContainerState(this.url, this.title);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final _url;
  final _title;

  _WebViewContainerState(this._url, this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${_title == null ? _url : _title}'),
        ),
        body: Column(
          children: [
            Expanded(
                child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
            ))
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Website Link Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: funPage(),
    );
  }
}

class funPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Website Link Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (kIsWeb) {
              // Handle web platform
              launchInWebViewOrVC('https://www.amazon.com/?tag=amazusnavi-20&hvadid=675149238952&hvpos=&hvnetw=g&hvrand=2616150689477843259&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9010192&hvtargid=kwd-10573980&ref=pd_sl_7j18redljs_e&hydadcr=28883_14580410&gad_source=1');
            } else {
              // For Android and iOS
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewPage()),
              );
            }
          },
          child: Text('Visit Website'),
        ),
      ),
    );
  }
}

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Website'),
      ),
      body: WebView(
        initialUrl: 'https://www.amazon.com/?tag=amazusnavi-20&hvadid=675149238952&hvpos=&hvnetw=g&hvrand=2616150689477843259&hvpone=&hvptwo=&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9010192&hvtargid=kwd-10573980&ref=pd_sl_7j18redljs_e&hydadcr=28883_14580410&gad_source=1',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

// For web platform, launch in new window
void launchInWebViewOrVC(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}


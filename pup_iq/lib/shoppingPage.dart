import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingPage(),
    );
  }
}

class ShoppingPage extends StatefulWidget {
  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  List<Map<String, dynamic>> items = [
    {"name": "Item 1", "image": "lesson.jpg"},
    {"name": "Item 2", "image": "lesson.jpg"},
    {"name": "Item 3", "image": "lesson.jpg"},
    {"name": "Item 4", "image": "lesson.jpg"},
    {"name": "Item 5", "image": "lesson.jpg"},
    {"name": "Item 6", "image": "lesson.jpg"},
    {"name": "Item 7", "image": "lesson.jpg"},
    // Add more items with their corresponding asset paths
  ];
  List<Map<String, dynamic>> cartItems = [];

  void addToCart(Map<String, dynamic> item) {
    setState(() {
      cartItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Page'),
      ),
      body: ListView.builder(
        itemCount: (items.length / 3).ceil(), // Calculate number of rows
        itemBuilder: (context, rowIndex) {
          return GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1, // Aspect ratio for square images
            ),
            itemCount: 3, // Number of items per row
            itemBuilder: (context, index) {
              final itemIndex = rowIndex * 3 + index;
              if (itemIndex >= items.length) {
                return SizedBox.shrink(); // Return an empty SizedBox for the last row if it has fewer items
              }
              return GestureDetector(
                onTap: () {
                  if (kIsWeb) {
              // Handle web platform
              launchInWebViewOrVC('https://www.amazon.com/Carhartt-Tradesman-Collar-Brown-Large/dp/B07NSFR681/ref=sr_1_6?crid=6I8G27NXGDE5&dib=eyJ2IjoiMSJ9.6NCG5NeznDpDn55TLzTW26APjjnaeRRsCm6EDvA7Rr8Kcjk9qxz-sON5Z_VhAnJqx1-s1bon34j2TXyQpzV41iTz644C8dgjN80uDOepzZ40Cf2agW6h0ZiEhpjE7ogWzN03Qp9YbWVYGl_CudMC8wRNsnkP9xSl_z_ZHyVZBZKRwzFJDeCppkX3MtKU4zfvjplLl0X6LzRYTQ0ETMeoPwlZu6rGw6OF3YLqbdmGyQgoGr3_n_6DWf5dY68WiUo2pFnpDYQuhCHMEq2zwAQGRBXnGZhiWxC3zbqQhjDt1hA.L91C5zElvDfcFVoYOMJfXH4Bfl9OHaepyWNce_5PRtQ&dib_tag=se&keywords=dog%2Bcollars&qid=1711417963&sprefix=dog%2Bcollar%2Caps%2C95&sr=8-6&th=1');
              // For Android and iOS
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewPage()),
              );
            }
                  
                },
                child: Card(
                  elevation: 1,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Ink.image(
                          image: AssetImage(
                            items[itemIndex]['image'],
                          ),
                          fit: BoxFit.cover,
                          child: InkWell(
                            onTap: () {
                              ;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          items[itemIndex]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
void launchInWebViewOrVC(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
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
class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

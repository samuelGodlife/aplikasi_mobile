import 'package:flutter/material.dart';
import 'package:logins_screen/Pages/PelatihanDetail.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Youtube extends StatefulWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.youtube.com/watch?v=bixR-KIJKYM"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Digital Marketing"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PelatihanDetail()));
          },
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Flutter is beautiful'),),
          body: Center(
            child: ElevatedButton(
              onPressed: _launchURL,
              child: Text('Show Flutter homepage'),
            ),
          ),
        )),
  );
}

_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class WebViewContainer extends StatefulWidget {
  @override
  WebViewContainerState createState() => WebViewContainerState();
}

class WebViewContainerState extends State<WebViewContainer> {
  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  requestPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();
    print(statuses[Permission.storage]);
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://flutter.dev',
    );
  }
}
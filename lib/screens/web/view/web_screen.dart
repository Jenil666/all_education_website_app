import 'package:all_education_website_app/screens/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  HomeProvider? F,T;
  @override
  Widget build(BuildContext context) {
    F = Provider.of<HomeProvider>(context,listen: false);
    T = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: F!.web!),
      ),
    );
  }
}

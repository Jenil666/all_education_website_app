import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{

  List Logo = [
    "assets/images/byjus.jpg",
    "assets/images/japatpoint.jpg",
    "assets/images/TutorialsPoint.jpg",
    "assets/images/unacademy.jpg",
    "assets/images/w3school.jpg",
    "ssets/images/wikipedia.jpg",
  ];
  WebViewController? web;
  List WebsitePath = [
    "https://byjus.com/",
    "https://www.javatpoint.com/",
    "https://www.tutorialspoint.com/index.htm",
    "https://unacademy.com/",
    "https://www.w3schools.com/",
    "https://www.wikipedia.org/",
  ];
  void loadurl(int index)
  {
    web = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse(WebsitePath[index]),);
  }
}
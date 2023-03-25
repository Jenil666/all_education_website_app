import 'package:all_education_website_app/screens/home/provider/home_provider.dart';
import 'package:all_education_website_app/screens/home/view/home_screen.dart';
import 'package:all_education_website_app/screens/web/view/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'web':(context) => WebScreen(),
        },
      ),
    ),
  );
}

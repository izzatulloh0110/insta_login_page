import 'package:flutter/material.dart';
import 'package:modul4_l7_t2/pages/insta_login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InstaLoginPage(), routes: {
      InstaLoginPage.id: (context) => InstaLoginPage(),
    });
  }
}

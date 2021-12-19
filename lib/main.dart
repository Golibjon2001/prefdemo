import 'package:flutter/material.dart';
import 'package:prefdemo/page/hom_page.dart';
import 'package:prefdemo/page/hom_page2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:const HomPage(),
      routes: {
        HomPage2.id:(context)=> HomPage2(),
      },
    );
  }
}


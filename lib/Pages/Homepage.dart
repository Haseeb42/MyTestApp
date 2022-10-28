// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mage/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
            child: Column(children: [
          Image.asset(
            "assets/Images/flutterlogin.png",
            fit: BoxFit.fill,
          )
        ])),
        drawer: Mydrawer());
  }
}

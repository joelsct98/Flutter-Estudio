import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context)?.settings.arguments as SecondPageArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda pantalla"),
      ),
      body: Center(
        child: Text(arguments.lastName as String),
      ),
    );
  }
}

class SecondPageArguments {
  String? name;   //con esto decimos que el parametro puede ser null
  String? lastName;

  SecondPageArguments({this.name, this.lastName});
}






import 'package:flutter/material.dart';
import 'package:untitled/pages/secondPage.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uso basico del Navigator'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              _showSecondPage(context);
            },
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    // final route = MaterialPageRoute(builder: (BuildContext context){
    //   return SecondPage(name: "Buenardo");
    // });
    //
    // Navigator.of(context).push(route);
    //todo esto se sustituye por la linea de abajo gracias a las rutas definidas en el main
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(name: 'Buenardo', lastName: 'Sasuki'));
  }

  
}

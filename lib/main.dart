import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: myHomePage()
    );
  }

/**
 * Como usar assets en la aplicacion
 * */
/*  Scaffold myHomePage() {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset("assets/luna.jpg"),

          ],
        )
    );
  }*/
}






  /**
   * tenemos un listView
   * de imagenes
   * de textos
   * de textos con array como variables - incluyendo un ontab()
   * */
/*

  Scaffold myHomePage() {

    List<String> names = [
      'martin-cham',
      'oscar-kun',
      'joel-san',
      'martin-cham',
      'oscar-kun',
      'joel-san',
      'martin-cham',
      'oscar-kun',
      'joel-san',
      'martin-cham',
      'oscar-kun',
      'joel-san',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int i){
          final name= names[i];
          return ListTile(
            title: Text(name),
            leading: Icon(Icons.person),
            onTap: (){
              print(name);
            },
          );
        },
        */
/**
         * para hacer una lista infinita*//*
*/
/*
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text("hola")
          );
        }*//*

      )
    );
  }
}

*/




  /*
  * uso de Row
  * como posicionarlo y tal
  * container son como Div
  * **/
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("uso de row"),
          ),
          body: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text("Activar sonido")),
                  Switch(
                    value: true,
                    onChanged: (value){},
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Puto")),
                  Switch(
                    value: true,
                    onChanged: (value){},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 200,
                      width: 50,
                    color: Colors.black,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                    color: Colors.white,
                  ),
                  Expanded(child:
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                    color: Colors.grey,
                  ),
                  Container(
                      height: 50,
                      width: 50,
                    color: Colors.blue,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Katon3")),
                  Icon(Icons.android,size: 59),
                  Switch(
                      value: true,
                      onChanged: (value){}
                  )
                ],
              )


            ],
          ),

        *//*
          body: Row(
            children: <Widget>[
              Expanded(child: Text("Activar Sonido")),
              Icon(Icons.android,size: 59),
              Switch(
                  value: true,
                  onChanged: (value){}
              )
            ],
          )*//*
      ),
    );
  }
}*/

/*  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("uso de columnas"),
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alineado vertical
              crossAxisAlignment: CrossAxisAlignment.stretch, //alineado horizontal
              children: <Widget>[
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
                Text("estilo de agua. jutsu bola de agua"),
                Text("estilo de agua. jutsu bola de agua"),
                Text("estilo de agua. jutsu bola de agua"),
                Text("estilo de agua. jutsu bola de agua"),
                Text("estilo de agua. jutsu bola de agua"),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSknFQbVYoMm9kT3_-YYAr3MbMnr9YzuPSASD__55uclogAV0HDzew0VHRbZWWIZAlnO0c&usqp=CAU",
                  height: 200,),
              ],
            ),
            
          ),
      ),
    );
  }
}*/
/**
 * distribucion con column
 */
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("uso de columnas"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alineado vertical
            crossAxisAlignment: CrossAxisAlignment.stretch, //alineado horizontal
            children: <Widget>[
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              Text("estilo de agua. jutsu bola de agua"),
              Text("estilo de agua. jutsu bola de agua"),
              Text("estilo de agua. jutsu bola de agua"),
              Text("estilo de agua. jutsu bola de agua"),
              Text("estilo de agua. jutsu bola de agua"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSknFQbVYoMm9kT3_-YYAr3MbMnr9YzuPSASD__55uclogAV0HDzew0VHRbZWWIZAlnO0c&usqp=CAU",
                height: 200,),
            ],
          ),
        )
      ),
    );
  }
}*/


/**
 * botones en muchos sitios
 * appbar
 * botones flotantes
 * menus a la izquierda y la derecha
 */
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter de prueba',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(

        appBar: AppBar(
          title: Text("Uso del Scafolld"),
          actions: <Widget>[ //añadir botones a menu de arriba
            IconButton(icon: Icon(Icons.add), onPressed: _add),
            IconButton(icon: Icon(Icons.add), onPressed: _add),
          ],
          leading: IconButton(
            icon: Icon(Icons.remove),
            onPressed: _add,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30) //radio en el menu
          ),
        ),
        body: Center(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
        drawer: Drawer(),   //para poner menu a la izquierda
        endDrawer: Drawer(),  //para poner menu a la derecha
        backgroundColor: Colors.black, //color de fonde de la app
      ),
    );
  }

  void _add(){
      print("puto");
  }
}*/


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "puto, empezamos con flutter",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.green),
        ),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.developer_board),
          onPressed: () {
            print("comemela");
          },
          iconSize: 200,
        ),
      ),
    );
  }
}



/**
 * un icono en el medio
 */
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "puto, empezamos con flutter",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.green),
          ),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.developer_board),
            onPressed: () {
              print("comemela");
            },
            iconSize: 200,
          ),
        ),
    );
  }
}
*/


/**
 * una imagen en el medio
 */
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "puto, empezamos con flutter",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.green),
          ),
        ),
        body: Center(
            child: Image.network("https://c.tenor.com/cUpVSPi9J6AAAAAC/halfcat-simdemocracy.gif",
            height: 500,),
        )
    );
  }
}
*/

/**
 * un texto en el medio
*/
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text(
            "puto, empezamos con flutter",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.green),
          ),
        ));
  }

}
*/

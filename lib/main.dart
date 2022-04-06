
import 'package:flutter/material.dart';
import 'package:untitled/pages/MyHomePage.dart';
import 'package:untitled/pages/secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/":(BuildContext context) => MyHomePage(),
        "/second": (BuildContext context) => SecondPage(),
      },
    );
  }
}




/*


class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


  }
}
*/




/**como usar un StatefulWidget (sintaxis y ejemplos)
 * GestureDetector:
 * lo podemos usar para poder obtener eventos de la pantalla y hacer cosas con ello
 * Desde un servicio o lo que sea*/
/*class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: _onTap,
      onLongPress: _onLongPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.folder),
            SizedBox(
              width: 20,
            ),
            Text("Carpeta de porno(no abrir)")
          ],
        ),
      ),
    );
  }
}

void _onTap() {
  print('hola');
}

void _onLongPress() {
  print("Se ha mantenido el click");
}*/

/**
 * usos que podemos darle a StatefulWidget
 * 1.- es una extension que se uso para comportamientos dinamicos y da facilidades
 * 2.- como podemos ver, podemos establecer metodos para cuando se ejecute
 *        la app o la pantalla y tambn cuando se destruye
 * 3.- podemos establecer varios metodos para reutilizarlos*/

/*import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String name= "Comemela";
  double progessValue= 0.0;
  bool switchValue= false;


  //antes de pintar primero pasa por este metodo
  @override
  void initState() {
    super.initState();
    //tiempo para que se ejecute un método
    Timer.periodic(Duration(seconds: 1), (value){
      changedName();
    });
    _controller = AnimationController(vsync: this);
  }

  //Si el Widget se destruye salta este metodo
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //esta funcion lo podemos usar para empezar a pimtar en la app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              this.name,
              style: TextStyle(fontSize: 30),
            ),
            LinearProgressIndicator(value: progessValue),
            Switch(
              value: switchValue,
              onChanged: (value){
                setState(() {
                  this.switchValue= value;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changedName,
      ),
    );
  }

  void changedName() {
    setState(() {
      if(name == "Comemela"){
        name='Puto';
      }else{
        name = "Comemela";
      }
    });
    progessValue += 0.1;
  }
}*/


/*

  class MyHomePage extends StatefulWidget {

    MyHomePage({Key key}) : super(key: key);

    _MyHomePageState createState() => _MyHomePageState();
  }

  class _MyHomePageState {
    @override
    Widget build (BuildContext context){
      return Scaffold();
    }
  }
*/

/**
   * todo*
   * https://www.youtube.com/watch?v=l_T9nCfKPFw&list=PLl_hIu4u7P677H9f6zPOHiOz2izkvQq2E&index=25
   * mirar video para ver lo de las fuentes
   * */
/*
  Scaffold myHomePage() {
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
  }
*/

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
  }

  }
  */

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
        }
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

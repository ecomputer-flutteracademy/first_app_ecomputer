import 'package:flutter/material.dart';

int valorCounter = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // appBar: AppBar(),
      // drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print("Hola Desde el botón");

          setState(() {
            valorCounter++;
          });
          print(valorCounter);
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Mi Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Presiona el Botón para incrementar el Valor:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(valorCounter.toString()),
          ],
        ),
      ),
    );
  }
}

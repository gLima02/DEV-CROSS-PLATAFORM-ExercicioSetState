import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double teste = 300;
  double red = 0;
  double green = 0;
  double blue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
              setState(() {
                if(teste > 50){
                teste = teste - 50;
                }
              });
              
              }
              ,
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  teste = 50;  
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                 setState(() {
                teste = 300;
              });
              },

            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                teste = 500;
              });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                if(teste < 500){

                teste = teste + 50;
                }
              });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: teste,
                  color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: red,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          red = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    '${red.toInt()}',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: green,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          green = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    '${green.toInt()}',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: blue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                       setState(() {
                         blue = value;
                       });

                      },
                    ),
                  ),
                  Text(
                    '${blue.toInt()}',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
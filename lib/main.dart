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
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
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
  double topLeft = 0.0;
  double topRight = 0.0;
  double bottomLeft = 0.0;
  double bottomRight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Darka'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft),
                  topRight: Radius.circular(topRight),
                  bottomLeft: Radius.circular(bottomLeft),
                  bottomRight: Radius.circular(bottomRight),
                ),
              ),
            ),
            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("TL: ${topLeft.toStringAsFixed(2)}"),
                          Slider(
                            value: topLeft,
                            min: 0,
                            max: 100,
                            activeColor: Colors.brown,
                            onChanged: (value) {
                              setState(() {
                                topLeft = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("TR: ${topRight.toStringAsFixed(2)}"),
                          Slider(
                            value: topRight,
                            min: 0,
                            max: 100,
                            activeColor: Colors.brown,
                            onChanged: (value) {
                              setState(() {
                                topRight = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("BL: ${bottomLeft.toStringAsFixed(2)}"),
                          Slider(
                            value: bottomLeft,
                            min: 0,
                            max: 100,
                            activeColor: Colors.brown,
                            onChanged: (value) {
                              setState(() {
                                bottomLeft = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("BR: ${bottomRight.toStringAsFixed(2)}"),
                          Slider(
                            value: bottomRight,
                            min: 0,
                            max: 100,
                            activeColor: Colors.brown,
                            onChanged: (value) {
                              setState(() {
                                bottomRight = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.red, width: 50, height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.cyan, width: 50, height: 50),
                Container(color: Colors.pink, width: 50, height: 50),
                Container(color: Colors.purple, width: 50, height: 50),
              ],
            ),
            Container(
              color: Colors.amber,
              width: 300,
              height: 30,
              child: const Text(
                "Diamante amarelo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Apertou o botao");
              },
              child: const Text("Botao"),
            )
          ],
        ),
      ),
      // home: Stack(
      //   alignment: AlignmentDirectional.center,
      //   children: [
      //     Container(color: Colors.red, width: 100, height: 100),
      //     Container(color: Colors.blue, width: 50, height: 50),
      //   ],
      // ),
      // home: Container(
      //   color: Colors.white,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: <Widget>[
      //       Container(color: Colors.red, width: 100, height: 100),
      //       Container(color: Colors.blue, width: 50, height: 50),
      //     ],
      //   ),
      // ),
      // home: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Container(color: Colors.red, width: 100, height: 100),
      //     Container(color: Colors.blue, width: 50, height: 50),
      //   ],
      // ),
    );
  }
}

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
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          title: const Text("Tarefas"),
        ),
        body: ListView(
          children: [
            Task("Aprender Dart",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Dart_programming_language_logo_icon.svg/1024px-Dart_programming_language_logo_icon.svg.png"),
            Task("Aprender Javascript",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Font_Awesome_5_brands_js.svg/896px-Font_Awesome_5_brands_js.svg.png"),
            Task("Aprender PHP",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large"),
            Task("Aprender Java",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large"),
            Task("Aprender C#",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large"),
            Task("Aprender Python",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large"),
            Task("Aprender R",
                "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text(
            "+",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;

  const Task(
    this.nome,
    this.foto, {
    Key? key,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: const TextStyle(
                              fontSize: 24, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Container(
                        width: 52,
                        height: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.arrow_drop_up),
                                Text(
                                  "UP",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Nivel $nivel",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

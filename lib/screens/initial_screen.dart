import 'package:flutter/material.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: (opacidade) ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                "Aprender Dart",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Dart_programming_language_logo_icon.svg/1024px-Dart_programming_language_logo_icon.svg.png",
                3),
            Task(
                "Aprender Javascript",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Font_Awesome_5_brands_js.svg/896px-Font_Awesome_5_brands_js.svg.png",
                2),
            Task(
                "Aprender PHP",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1024px-PHP-logo.svg.png",
                2),
            Task(
                "Aprender Java",
                "https://upload.wikimedia.org/wikipedia/commons/6/67/Crystal_java.png",
                3),
            Task(
                "Aprender C#",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/C_Sharp_wordmark.svg/1024px-C_Sharp_wordmark.svg.png",
                3),
            Task(
                "Aprender Python",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/935px-Python-logo-notext.svg.png",
                4),
            Task(
                "Aprender R",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/R_logo.svg/991px-R_logo.svg.png",
                5),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Mapp"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(onPressed: () {}, icon: (
          const Icon(Icons.menu),
          onPressed: () {},
        )),
      ),
    );
  }
}

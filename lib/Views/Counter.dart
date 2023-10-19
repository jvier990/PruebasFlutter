import 'package:flutter/material.dart';
import 'package:pactica/Components/Custom_Button.dart';
import 'package:pactica/Views/Halloween.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int countador = 0;
  String aux = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Counter'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$countador',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(countador > 1 ? 'Clicks' : 'Click',
                style: TextStyle(fontSize: 60)),
            Image.network(
                'https://media.tenor.com/2_Vs6_AB2BsAAAAi/esqueleto-bailando.gif')
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 18,
          ),
          const SizedBox(
            height: 18,
          ),
          Custom_Button(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  countador++;
                });
              }),
          const SizedBox(
            height: 18,
          ),
          Custom_Button(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                countador = 0;
              });
            },
          ),
          const SizedBox(
            height: 18,
          ),
          Custom_Button(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                countador--;
              });
            },
          ),
          const SizedBox(
            height: 18,
          ),
          Custom_Button(
            icon: Icons.arrow_back,
            onPressed: () {
              setState(() {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const practica()));
              });
            },
          ),
        ],
      ),
    );
  }
}

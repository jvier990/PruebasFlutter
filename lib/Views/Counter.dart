import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class practica extends StatefulWidget {
  const practica({super.key});
  @override
  State<practica> createState() => _practicaState();
}

class _practicaState extends State<practica> {
  //ESTO PUEDE SER UN MIXIN

  DateTime today = DateTime.now();

  DateTime? _selecteDay;
  DateTime? _RangeStart;
  DateTime? _RangeFinish;
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  void _onDaysSelected(DateTime? start, DateTime? finish, DateTime focusedDay) {
    setState(() {
      _selecteDay = null;
      today = focusedDay;
      _RangeStart = start;
      _RangeFinish = finish;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      drawer: Drawer(
          shadowColor: Colors.black54,
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.only(top: 65, bottom: 20),
                  child: Image.network(
                      "https://media.tenor.com/ti0rtEuRNyEAAAAC/happy-halloween.gif"),
                ),
                const Text(
                  "Javier Garcia",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white70),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.orange[400],
                  child: const Text("Home",
                      style: TextStyle(color: Colors.white70)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.orange[400],
                  child: const Text("Sign out",
                      style: TextStyle(color: Colors.white70)),
                ),
              ],
            ),
          )),
      appBar: AppBar(
        title: const Text('Practica Fluttuer'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media.tenor.com/2_Vs6_AB2BsAAAAC/esqueleto-bailando.gif"),
          ),
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      body:

          //SE PUEDE CREAR UN COMPONENTE PARA EL CALENDARIO
          Column(children: [
        TableCalendar(
          locale: "en_US",
          rowHeight: 45,
          headerStyle: const HeaderStyle(
              decoration: BoxDecoration(color: Colors.purple),
              formatButtonVisible: false,
              titleCentered: true),
          availableGestures: AvailableGestures.all,
          rangeSelectionMode: RangeSelectionMode.toggledOn,
          // selectedDayPredicate: (day) => isSameDay(day, today),
          focusedDay: today,
          firstDay: DateTime.utc(2023, 01, 01),
          lastDay: DateTime.utc(2023, 12, 31),
          //onDaySelected: _onDaySelected,
          rangeStartDay: _RangeStart,
          rangeEndDay: _RangeFinish,
          onRangeSelected: _onDaysSelected,
          calendarStyle: CalendarStyle(
              defaultDecoration: BoxDecoration(color: Colors.orange),
              outsideDecoration: BoxDecoration(color: Colors.orange),
              holidayDecoration: BoxDecoration(color: Colors.orange),
              weekendDecoration: BoxDecoration(color: Colors.orange)),
        ),
      ]),
    );
  }
}

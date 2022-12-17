//import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:world_time_app/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  //Object? parameters;
  @override
  Widget build(BuildContext context) {
    //data = ModalRoute.of(context)!.settings.arguments as Map;
    data = ModalRoute.of(context)?.settings.arguments as Map;
    //data = jsonDecode(jsonEncode(parameters));

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
        child: SafeArea(
          child: Column(children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Loction'),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: const TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              data['time'],
              style: const TextStyle(fontSize: 66.0),
            )
          ]),
        ),
      ),
    );
  }
}

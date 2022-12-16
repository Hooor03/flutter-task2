import 'package:flutter/material.dart';

//import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  final bool _isObscure = true;

  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [Text('Edit Prifile')]),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://images.app.goo.gl/kbFJqqvomNwfegRr7'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextField(decoration: InputDecoration(labelText: 'E-mail')),
                  TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(labelText: 'Password')),
                  TextField(decoration: InputDecoration(labelText: 'location')),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(onPressed: () {}, child: const Text('cancel')),
                ElevatedButton(onPressed: () {}, child: const Text('SAVE'))
              ])
            ],
          ),
        )));
  }
}

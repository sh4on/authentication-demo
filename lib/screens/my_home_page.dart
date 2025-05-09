import 'dart:io';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
        actions: [TextButton(onPressed: () {
          exit(0);
        }, child: Text('Exit'),
        )],
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}

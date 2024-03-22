import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Breakfast",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8.0)),
          )),
    );
  }
}

import 'package:flutter/material.dart';

class DetailContact extends StatelessWidget {
  const DetailContact({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail contact"),
      ),
      body: Center(
        child: Text(
          "$index",
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

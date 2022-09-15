import 'package:flutter/material.dart';
import 'package:flutter_shimmer_list/widgets/shimmer_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer List"),
        backgroundColor: Colors.green[700],
      ),
      body: const ShimmerList(
        padding: EdgeInsets.all(20),
        length: 10,
      ),
    );
  }
}

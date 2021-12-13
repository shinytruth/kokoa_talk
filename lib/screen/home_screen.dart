import 'package:flutter/material.dart';

class HomesScreen extends StatefulWidget {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  _HomesScreenState createState() => _HomesScreenState();
}

class _HomesScreenState extends State<HomesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

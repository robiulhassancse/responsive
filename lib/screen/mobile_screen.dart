import 'package:flutter/material.dart';
import 'package:responsive/const.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer,
      appBar: AppBar(
        title: const Text('Mobile Screen'),
        backgroundColor: appBarColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.green,
              ),
            );
          }))
        ],
      ),
    );
  }
}

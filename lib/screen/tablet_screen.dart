import 'package:flutter/material.dart';
import 'package:responsive/const.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer,
      appBar: AppBar(
        title: const Text('Tablet Screen'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
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
                Expanded(

                    child: ListView.builder(
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
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 200,
              color: Colors.green,

            ),
          )
        ],
      ),
    );
  }
}

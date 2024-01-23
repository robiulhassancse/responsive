import 'package:flutter/material.dart';
import 'package:responsive/const.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop Screen'),
        backgroundColor: Colors.pink,
      ),
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: myDrawer),
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

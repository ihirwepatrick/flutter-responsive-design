import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text(
          "D E S K T O P",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Row(
        children: [
          // First column
          Expanded(
            flex: 3, // Give this column more space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Second column
          Container(
            width: 200,
            color: Colors.deepPurple,
            child: Center(
              child: Text(
                "Second Column",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';


class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("M O B I L E", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),

      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              height: 250,
              color: Colors.deepPurple[400],
            ),
          ),
          ),
          Expanded(child: ListView.builder(
            itemCount: 8,
              itemBuilder: (context, index) {
            return Padding(padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.deepPurple[300],
              height: 120,
            ),
            );
          }
          )
          )
        ],
      ),
    );
  }
}

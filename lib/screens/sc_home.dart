import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('ádasds'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
        ],
        title: Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            100,
            (index) {
              return Text(
                index.toString(),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm)),
          ],
        ),
      ),
    );
  }
}

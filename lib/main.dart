import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nguyễn Viết Hưng"),
            Text("10/11/2001"),
            Text("nvhung10112001@gmail.com"),
            ElevatedButton(
              onPressed: () {
                print("button pressed");
              },
              child: Text('hoang 1213'),
            ),
            Card(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 56,
                  bottom: 22,
                  left: 12,
                  right: 42,
                ),
                child: Text("Hoang le"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

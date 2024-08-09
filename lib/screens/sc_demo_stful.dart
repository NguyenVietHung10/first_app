import 'package:flutter/material.dart';

class ScreenDemoStateful extends StatefulWidget {
  const ScreenDemoStateful({super.key});

  @override
  State<ScreenDemoStateful> createState() => _ScreenDemoStatefulState();
}

class _ScreenDemoStatefulState extends State<ScreenDemoStateful> {
  TextEditingController? _controllerA;
  TextEditingController? _controllerB;
  String? ketQua;

  @override
  void initState() {
    super.initState();
    _controllerA = TextEditingController();
    _controllerB = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(ketQua ?? "0"),
          TextField(
            controller: _controllerA,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _controllerB,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              int a = int.parse(_controllerA?.text ?? "0");
              int b = int.parse(_controllerB?.text ?? "0");
              ketQua = (a * b).toString();
              setState(() {});
            },
            child: Text("hit me"),
          ),
        ],
      ),
    );
  }
}

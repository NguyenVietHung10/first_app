import 'package:flutter/material.dart';

class ScreenList extends StatefulWidget {
  const ScreenList({super.key});

  @override
  State<ScreenList> createState() => _ScreenListState();
}

class _ScreenListState extends State<ScreenList> {
  TextEditingController? _controllerFirstName;
  TextEditingController? _controllerLastName;

  List<String> _user = [];

  @override
  void initState() {
    super.initState();
    _controllerFirstName = TextEditingController();
    _controllerLastName = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _controllerFirstName,
            decoration: InputDecoration(
              hintText: 'First Name',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: _controllerLastName,
            decoration: InputDecoration(
              hintText: 'Last Name',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              String firstName = _controllerFirstName?.text ?? '';
              String lastName = _controllerLastName?.text ?? '';

              _user.add(firstName + " " + lastName);

              setState(() {});
            },
            child: Text("Add"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _user.length,
              itemBuilder: (context, index) {
                return Text(_user[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

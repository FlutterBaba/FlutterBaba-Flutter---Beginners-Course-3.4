import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged(value) {
    setState(() {
      _value1 = value;
    });
  }

  void _value2onChanged(value) {
    setState(() {
      _value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.show_chart),
        ],
        centerTitle: true,
        title: const Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: _value1,
              onChanged: _onChanged,
            ),
            SwitchListTile(
              value: _value2,
              onChanged: _value2onChanged,
              title: const Text("Switch"),
              activeColor: Colors.red,
              subtitle: const Text("SwitchListTile"),
            ),
          ],
        ),
      ),
    );
  }
}

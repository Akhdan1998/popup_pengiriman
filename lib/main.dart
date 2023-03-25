import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DialogExample(),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('showDialog Sample')),
      body: Center(
        child: OutlinedButton(
          onPressed: () => _dialogBuilder(context),
          child: const Text('Open Notification'),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 50,
          backgroundColor: Colors.transparent,
          icon: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.close,
                  color: Colors.white, size: 30,
                )),
          ),
          content: Image.asset('assets/flyer_ramadan.png'),
        );
      },
    );
  }
}

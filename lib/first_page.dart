import 'package:customroute/routes/routes.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.flutter_dash),
            ButtonWiget(onclicked: () => Navigator.pop(context), text: 'back')
          ],
        ),
      ),
    );
  }
}

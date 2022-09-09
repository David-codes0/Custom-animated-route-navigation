import 'package:customroute/routes/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWiget(
              onclicked: () {
                Navigator.of(context).pushNamed(RoutesManager.loginScreen);
              },
              text: 'custom navigation',
            ),
            ButtonWiget(
              onclicked: () {
                Navigator.of(context).pushNamed(RoutesManager.homeScreen);
              },
              text: 'custom navigation',
            ),
            ButtonWiget(
              onclicked: () {
                Navigator.of(context).pushNamed(RoutesManager.onboardingScreen);
              },
              text: 'custom navigation',
            ),
            ButtonWiget(
              onclicked: () {
                Navigator.of(context).pushNamed(RoutesManager.registerScreen);
              },
              text: 'custom navigation',
            )
          ],
        ),
      ),
    );
  }
}

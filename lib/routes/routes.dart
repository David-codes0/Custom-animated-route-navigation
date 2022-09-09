import 'package:customroute/first_page.dart';
import 'package:customroute/home_screen.dart';
import 'package:customroute/second_page.dart';
import 'package:customroute/third_page.dart';
import 'package:customroute/widgets/custom_page_route.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const onboardingScreen = '/';

  static const homeScreen = '/homescreen';
  static const loginScreen = '/loginscreen';
  static const registerScreen = '/registerScreen';
  static const movieDetailsScreen = '/movieDetailsScreen';
  static const verifyEmailScreen = '/verifyEmailScreen';
  static const authWrapper = '/authwrapper';
  static const videoPlayerScreen = '/videoplayerscreen';

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return CustomRoutePage(child: const HomeScreen(),direction: AxisDirection.left);
      case onboardingScreen:
        return CustomRoutePage(child: const FirstScreen(),direction: AxisDirection.up);
      case loginScreen:
        return CustomRoutePage(child: const SecondScreen(),direction: AxisDirection.down);

      case registerScreen:
         return CustomRoutePage(child: const ThirdScreen(),direction: AxisDirection.right);

      default:
        throw const FormatException('This page could not be found');
    }
  }
}

class ButtonWiget extends StatelessWidget {
  const ButtonWiget({
    Key? key,
    required this.onclicked,
    required this.text,
  }) : super(key: key);
  final VoidCallback onclicked;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclicked,
      child: Text(text),
    );
  }
}

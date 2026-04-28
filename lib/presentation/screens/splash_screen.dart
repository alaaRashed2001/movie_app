import 'package:flutter/material.dart';
import 'package:movie_app/core/Helpers/navigator_helper.dart';
import 'package:movie_app/presentation/screens/movies_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      NavigatorHelper.jump(
        context,
        screen: const MoviesScreen(),
        replace: true,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Movie App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

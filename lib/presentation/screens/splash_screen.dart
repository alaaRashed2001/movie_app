import 'package:flutter/material.dart';
import 'package:movie_app/presentation/screens/movie_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
     {
  Future<void> _init() async {
Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (context) => const MovieScreen(),
  ),
);


  }

  @override
  void initState() {
    super.initState();
    _init();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:travel_app/screens/destination_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/loading_screen.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        'loading': (context) => const LoadingScreen(),
        // 'destination_screen': (context) => const DestinationScreen(destination: null,)
      },
      theme: ThemeData(
        accentColor: const Color(0xFFccebff),
        primaryColor: const Color(0xFF8ad2ff),
        backgroundColor: const Color(0xFFf5fbff),
      ),
    );
  }
}

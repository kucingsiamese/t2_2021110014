import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2_2021110014/screens/profile_screen.dart';
import 'package:t2_2021110014/screens/discover_screen.dart';
import 'package:t2_2021110014/providers/pet_provider.dart';

void main() {
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => PetProvider()),
    ],
    child: const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet App',
      theme: ThemeData(
        primaryColor: Colors.brown[100],
        fontFamily: 'Arial',
      ),
      home: const DiscoverScreen(),
      routes: {
        DiscoverScreen.routeName: (ctx) => const DiscoverScreen(),
        ProfileScreen.routeName: (ctx) => const ProfileScreen(),
      },
    );
  }
}

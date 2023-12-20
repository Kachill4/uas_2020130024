import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_2020130024/cartprovider.dart';
import 'package:uas_2020130024/loginscreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2020130024 - Chikana Friscilla',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 7, 54, 46)),
        useMaterial3: true,
        fontFamily: 'InterRegular',
      ),
      home: LogInScreen(),
    );
  }
}

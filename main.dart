import 'package:flutter/material.dart';
import 'home_screen.dart'; 
import 'add_transaction_screen.dart';
import 'categories_screen.dart';
import 'stats_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budget App',
      home:AddTransactionScreen (),
    );
  }
}
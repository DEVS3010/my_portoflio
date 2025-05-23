import 'package:flutter/material.dart';
import 'ui/pages/home_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahmoud Alaa Portfolio',
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

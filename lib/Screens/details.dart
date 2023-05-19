import 'package:flutter/material.dart';
import 'package:moneymanager/Screens/card.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CstmCard(heading: 'Balance', amount: '2000')),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moneymanager/Screens/card.dart';
import 'package:moneymanager/Screens/card_with_button.dart';
import 'package:moneymanager/Screens/income_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final _box = Hive.box('Box');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          CstmCard(
            heading: 'Balance',
            amount: _box.get('balance'),
          ),
          BtnCard(
            heading: 'Income',
            amount: _box.get('income'),
            btnText: 'Show',
            action: () => toIncomeScreen(context),
          ),
          BtnCard(
            heading: 'Expenditure',
            amount: _box.get('expenditure'),
            btnText: 'Update',
            action: () => toIncomeScreen(context),
          )
        ],
      )),
    );
  }
}

void toIncomeScreen(context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => const IncomeScreen()));
}

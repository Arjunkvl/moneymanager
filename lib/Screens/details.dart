import 'package:flutter/material.dart';
import 'package:moneymanager/Screens/card.dart';
import 'package:moneymanager/Screens/card_with_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: const [
          CstmCard(
            heading: 'Balance',
            amount: '2000',
          ),
          BtnCard(
            heading: 'Income',
            amount: '20000',
            btnText: 'Show',
          ),
          BtnCard(
            heading: 'Expenditure',
            amount: '20000',
            btnText: 'Update',
          )
        ],
      )),
    );
  }
}

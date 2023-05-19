import 'package:flutter/material.dart';

class CstmCard extends StatelessWidget {
  final String heading;
  final String amount;

  const CstmCard({super.key, required this.heading, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Align(
              alignment: Alignment.center,
              child: ListTile(
                leading: Text(
                  heading,
                  style: const TextStyle(fontSize: 25),
                ),
                trailing: Text(
                  amount,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

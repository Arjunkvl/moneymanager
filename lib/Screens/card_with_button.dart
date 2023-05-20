import 'package:flutter/material.dart';

class BtnCard extends StatelessWidget {
  final String heading;
  final String amount;
  final String btnText;
  final Function action;

  const BtnCard({
    super.key,
    required this.heading,
    required this.amount,
    required this.btnText,
    required this.action,
  });

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Text(
                      heading,
                      style: const TextStyle(fontSize: 25),
                    ),
                    trailing: Text(
                      amount,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () => action(),
                            color: Colors.green,
                            child: Text(btnText),
                          ),
                        ),
                      ),
                      const Expanded(flex: 2, child: SizedBox())
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

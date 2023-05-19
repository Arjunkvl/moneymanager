import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: const Color(0xffffffff),
        elevation: 0,
        leadingWidth: MediaQuery.of(context).size.width * 0.2,
        leading: Container(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.07),
          child: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(8.0),
              )),
        ),
        title: const Text(
          'Wallet',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
            child: const Icon(
              Icons.nat,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Card(
              clipBehavior: Clip.hardEdge,
              child: Align(
                alignment: Alignment.center,
                child: ListTile(
                  leading: Text(
                    'Total Balance',
                    style: TextStyle(fontSize: 25),
                  ),
                  trailing: Text(
                    ' 2000',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.news),
        ),
      ),
    );
  }
}

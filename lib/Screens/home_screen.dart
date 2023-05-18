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
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 1,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(fontFamily: 'mono', fontSize: 14),
                      ),
                      Text('2000Rs')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

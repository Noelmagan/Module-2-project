import 'package:flutter/material.dart';
import 'snack_Bar.dart';

class TransfermoneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Transfer Money'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFCCBC),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xFFFFCCBC),
                    border: Border.all(
                      color: Color(0xFFFFAB91),
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Current Balance:',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '₱100,000',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          'Enter the amount of money',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          maxLength: 1000000,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'PHP'),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(
                              'Enter account number',
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: TextField(
                              maxLength: 12,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Account Number'),
                            ),
                          ),
                          SnackBarPage()
                        ],
                      )
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

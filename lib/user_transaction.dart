import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transactions_list.dart';
import './transaction.dart';

class UserTransactions extends StatefulWidget {
  //UserTransactions({Key key}) : super(key: key);

  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'grocery',
      amount: 235,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'veges',
      amount: 23,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

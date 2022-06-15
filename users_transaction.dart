import './new_Transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => UserTransactionState();
}

class UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(id: 'T1', title: 'Shoes', amount: 200, date: DateTime.now()),
    Transaction(id: 'T2', title: 'Sandals', amount: 100, date: DateTime.now())
  ];

  void _addNewTransaction(String txtitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txAmount,
        date: DateTime.now());

    void setState(VoidCallback fn) {
      // TODO: implement setState
      _userTransaction.add(newTx);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_userTransaction),
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}

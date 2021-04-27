import 'package:flutter/material.dart';
import './transaction.dart';
import './transactionListItem.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  TransactionList({this.userTransactions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransactions.map((transaction) {
        return TransactionListItem(transaction: transaction);
      }).toList(),
    );
  }
}

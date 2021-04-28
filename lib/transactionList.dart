import 'package:flutter/material.dart';
import './transaction.dart';
import './transactionListItem.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  TransactionList({this.userTransactions});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TransactionListItem(
            transaction: userTransactions[index],
          );
        },
        itemCount: userTransactions.length,
      ),
    );
  }
}

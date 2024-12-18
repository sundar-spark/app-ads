import 'package:flutter/material.dart';

class BillItem extends TableRow {
  final String item;
  final int quantity;
  final double price;

   BillItem({
    required this.item,
    required this.quantity,
    required this.price,
  }):super(
    children:  [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Text(item, maxLines: null),
      ),  
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(quantity.toString())),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(price.toString())),
      )]);
}
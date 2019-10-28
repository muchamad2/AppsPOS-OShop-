import 'package:flutter/material.dart';
import 'package:ol_shop/view/widget/transaction_card.dart';

class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            new CardofTransaction(),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.red,
              child: Icon(Icons.add),
            ),
          ),
        )
      ],
    );
  }
}

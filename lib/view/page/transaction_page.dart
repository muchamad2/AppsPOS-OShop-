import 'package:flutter/material.dart';
import 'package:ol_shop/view/page/sales_page.dart';
import 'package:ol_shop/view/widget/transaction_card.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[600],
          title: Text('Daftar Transaksi'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Penjualan',),
              Tab(text: 'Pengeluaran',),
              Tab(text: 'Piutang',),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TransactionCard(),
            SalesPage(),
            Center(child: Text('data'),),
          ],
        ),
      ),
    );
  }
}

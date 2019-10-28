import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        new CardofTransaction(),
      ]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: (){},
        ),
    );
  }
}

class CardofTransaction extends StatelessWidget {
  const CardofTransaction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 7,
      color: Colors.amber[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.amber))),
            padding: EdgeInsets.all(5),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Text(
                    'UXSDJ999238882372SIIDN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text('12 Jan 2019 13:14 WIB',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text('Product by : Jonatan Mobile')),
          Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 1, color: Colors.amber))),
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: ListTile(
              leading: Image(
                image: new NetworkImage('https://via.placeholder.com/300'),
                fit: BoxFit.cover,
              ),
              title: Text('Product bersejarah 1 kg'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Description'),
                  Text('Description'),
                ],
              ),
              trailing: Column(
                children: <Widget>[
                  Text('Total Harga',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Rp. 50000', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

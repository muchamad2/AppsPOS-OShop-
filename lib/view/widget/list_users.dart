import 'package:flutter/material.dart';

class ListUsers extends StatelessWidget {
  List<Widget> generateList(){
    var dummy = List<Widget>.generate(10, (i) => CardListUsers());
    return dummy;
  }
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: generateList(),
    );
  }
}

class CardListUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.account_box),
      title: Text('Name'),
      subtitle: Text('lasttime'),
      trailing: Column(
        children: <Widget>[
          Text('Total Barang'),
          Text('0')
        ],
      ),
    );
  }
}
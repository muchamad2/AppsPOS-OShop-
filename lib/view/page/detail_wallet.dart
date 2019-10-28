import 'package:flutter/material.dart';

class PageWallet extends StatefulWidget {
  @override
  _PageWalletState createState() => _PageWalletState();
}

class _PageWalletState extends State<PageWallet> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kas'),
      ),
      body: ListView(
          
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.grey),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Current Balance : ',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[300]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rp. 0',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.all(8),
                child: Text(
                  'History',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )),
                ListTile(
                        leading: Text('date'),
                        title: Text('TopUp'),
                        trailing: Text('Rp. 0'),
                      ),
                /* Container(
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Text('date'),
                        title: Text('TopUp'),
                        trailing: Text('Rp. 0'),
                      ),
                      ListTile(
                        leading: Text('date'),
                        title: Text('TopUp'),
                        trailing: Text('Rp. 0'),
                      ),
                    ],
                  ),
                ) */
          ]),
          floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
          
          onPressed: (){},),
    );
  }
}

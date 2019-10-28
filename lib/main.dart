import 'package:flutter/material.dart';
import 'package:ol_shop/view/widget/grid_view_product.dart';
import 'package:ol_shop/view/widget/nav_drawer_tile.dart';
import 'package:ol_shop/view/widget/product_card.dart';
import 'view/page/transaction_page.dart';

void main(){
  runApp(new MaterialApp(
    title: "Online Shop",
    theme: ThemeData(primaryColor: Colors.amber),
    home: new HomePage(),
    routes: {
      '/transaction':(_) => TransactionPage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){},
          )
        ],
      ),
      body: new ViewGrid(),
      drawer: Drawer(
        child: buildStack()
      ),
    );
  }

  Stack buildStack() {
    return Stack(
        children: <Widget>[
          new DrawerTile(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                trailing: Icon(Icons.arrow_right),
                onTap: (){},
              ),
            ),
          )
        ],
      );
  }
}
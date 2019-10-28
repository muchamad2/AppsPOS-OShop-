import 'package:flutter/material.dart';
import 'package:ol_shop/view/page/info_shop.dart';
import 'package:ol_shop/view/widget/grid_view_product.dart';
import 'package:ol_shop/view/widget/list_users.dart';
import 'package:ol_shop/view/widget/product_card.dart';

class DetailShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            title: Text('Shop'),
            flexibleSpace: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: Image(
                    image: NetworkImage('https://via.placeholder.com/300'),
                  ),
                  title: Text('Nama Shop'),
                  subtitle: Text('Descripsi singkat'),
                  trailing: Icon(Icons.edit),
                ),
              ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Produk',
                ),
                Tab(
                  text: 'Pelanggan',
                ),
                Tab(
                  text: 'Info',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            new ShopProduk(),
            new ListUsers(),
            new InfoShop(),
          ],
        ),
      ),
    );
  }
}

class ShopProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ViewGrid(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
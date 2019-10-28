import 'package:flutter/material.dart';
import 'package:ol_shop/model/User.dart';
import 'package:ol_shop/view/page/detail_wallet.dart';
import 'package:ol_shop/view/page/detal_shop.dart';
import 'package:ol_shop/view/page/page_article.dart';
import 'package:ol_shop/view/page/report_page.dart';
import 'package:ol_shop/view/page/transaction_page.dart';

class DrawerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new DrawerHeaderAccount(),
        BuildListTile(text: 'Rp. 5000',navRoute: (){
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PageWallet();
          }));
        },),
        BuildListTile(
            text: 'Shop', hasSub: true, subtitle: 'MyShop', icon: Icons.shop,navRoute: (){
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailShopPage();
          }));
        },),
        SizedBox(
          height: 10,
        ),
        CustomListTile(
          text: 'Transcation',
          icon: Icons.credit_card,
          routeName: () {
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransactionPage();
          }));
        },
        ),
        CustomListTile(
          text: 'Report',
          icon: Icons.assessment,
          routeName: () {
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ReportPage();
          }));
        },
        ),
        CustomListTile(
          text: 'Information',
          icon: Icons.description,
          routeName: () {
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return PageArticle();
          }));
        },
        ),
      ],
    );
  }
}

class DrawerHeaderAccount extends StatelessWidget {
  final User user;
  DrawerHeaderAccount({
    Key key, this.user
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.deepOrange, Colors.amber])),
      accountName: Text(user.firstName + " " + user.lastName),
      accountEmail: Text(user.email),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(user.avatar),
      ),
    );
  }
}

class BuildListTile extends StatelessWidget {
  final String text;
  final bool hasSub;
  final String subtitle;
  final IconData icon;
  final Function navRoute;
  BuildListTile(
      {this.text = '',
      this.hasSub = false,
      this.icon = Icons.account_balance_wallet,
      this.subtitle = '',
      this.navRoute});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text,
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
      onTap: navRoute,
      trailing: Icon(Icons.arrow_right),
      subtitle: (hasSub == true) ? Text(subtitle) : Text(''),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function routeName;
  CustomListTile({this.text, this.icon, this.routeName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(width: 0.45, color: Colors.amber[600]))),
      padding: EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        splashColor: Colors.amber,
        onTap: routeName,
        child: Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(text, style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}

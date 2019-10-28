import 'package:flutter/material.dart';
import 'package:ol_shop/view/widget/product_card.dart';


class ViewGrid extends StatelessWidget {
  List<Widget> generateList(){
    var dummy = new List<Widget>.generate(10, (i)=> new ProductCard());
    return dummy;
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: generateList(),
    );
  }
}
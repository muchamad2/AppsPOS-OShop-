import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white30,
                child: ListTile(
                  leading: Text('Barang',style:TextStyle(fontWeight:FontWeight.bold),),
                  title: Text('Rp. 4000',style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),),
                ),
              ),
              child: Image(image: NetworkImage('https://via.placeholder.com/300'), fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InfoShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: Text('Deskripsi Toko',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),)),
              Container(
                padding: EdgeInsets.all(8),
                child: Text('Deskripsi')),
              ListTile(
                leading: Icon(Icons.location_on,size: 20,),
                title: Text('Location'),
                dense: true,
              ),
              ListTile(
                leading: Icon(Icons.calendar_today,size: 20,),
                title: Text('Open at Augustus 2019'),
                dense: true,
              )
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: Text('Catatan Toko', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,))),
              ListTile(title: Text('Jam Operasional'),trailing: Text('Baca'),)
            ],
          ),
        )
      ],
    );
  }
}
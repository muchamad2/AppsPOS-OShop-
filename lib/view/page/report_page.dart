import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  List<DataRow> generateList() {
    var dummy = List<DataRow>.generate(
        20,
        (i) => createData('Augustus 2019', i * 10000.0, i * 200.0,
            ((i * 200) / (i * 10000))));
    return dummy;
  }

  DataRow createData(
      String text, double penghasilan, double pengeluaran, double laba) {
    return DataRow(cells: <DataCell>[
      DataCell(Text(text)),
      DataCell(Text(penghasilan.toString())),
      DataCell(Text(pengeluaran.toString())),
      DataCell(Text(laba.toString()))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Report'),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(children: <Widget>[
          DataTable(
            columnSpacing: 15,
            horizontalMargin: 8,
            columns: <DataColumn>[
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Penghasilan')),
              DataColumn(label: Text('Pengeluaran')),
              DataColumn(label: Text('Laba/Rugi')),
            ],
            rows: generateList(),
          ),
        ]),
      ),
    );
  }
}

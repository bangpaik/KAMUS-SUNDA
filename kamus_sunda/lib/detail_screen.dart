import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String kosakata;
  final String terjemahan;
  final String detail;

  DetailScreen({
    required this.kosakata,
    required this.terjemahan,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Color(0xFF2196F3),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Kosakata',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 20),
            DataTable(
              columns: [
                DataColumn(label: Text('')),
                DataColumn(label: Text('')),
                DataColumn(label: Text('')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text(
                      'Kosakata',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    )),
                    DataCell(Text(':')),
                    DataCell(Text(
                      kosakata,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                    )),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Terjemahan')),
                    DataCell(Text(':')),
                    DataCell(Text(terjemahan)),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Detail')),
                    DataCell(Text(':')),
                    DataCell(Text(detail)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

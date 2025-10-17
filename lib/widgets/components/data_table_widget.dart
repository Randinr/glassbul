import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  final List<String> columns;
  final List<List<String>> rows;

  const DataTableWidget({super.key, required this.columns, required this.rows});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: columns.map((c) => DataColumn(label: Text(c, style: const TextStyle(color: Colors.white70)))).toList(),
      rows: rows
          .map((r) => DataRow(
                cells: r.map((e) => DataCell(Text(e, style: const TextStyle(color: Colors.white)))).toList(),
              ))
          .toList(),
      headingRowColor: MaterialStateProperty.all(Colors.blueGrey[800]),
      dataRowColor: MaterialStateProperty.all(Colors.grey[850]),
    );
  }
}

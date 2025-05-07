import 'package:employee_app/Drawer/drawer.dart';
import 'package:flutter/material.dart';


class CRRemarksPage extends StatelessWidget {
  const CRRemarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CR Remarks'),
        backgroundColor: Colors.teal.shade700,
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CR Remarks Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildCRRow('CR by Authority From', 'John Doe'),
            _buildCRRow('Date of CR', '01-05-2024'),
            _buildCRRow('CR Remark', 'Exceeds expectations in all tasks.'),
            const SizedBox(height: 30),
            const Text(
              'Previous CR Remarks:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _crRemarksHistory(),
          ],
        ),
      ),
    );
  }

  Widget _buildCRRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }

  Widget _crRemarksHistory() {
    final crData = [
      {'Date': '01-01-2023', 'Remark': 'Satisfactory performance'},
      {'Date': '01-06-2023', 'Remark': 'Needs improvement in time management'},
      {'Date': '01-12-2023', 'Remark': 'Excellent contribution to the project'},
    ];

    return Column(
      children: [
        Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
          },
          children: [
            const TableRow(
              decoration: BoxDecoration(color: Colors.teal),
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Date', style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('CR Remarks', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            ...crData.map(
              (entry) => TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Date']!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Remark']!),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

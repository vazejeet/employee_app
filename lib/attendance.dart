import 'package:employee_app/Drawer/drawer.dart';
import 'package:flutter/material.dart';


class AttendanceDetailsPage extends StatelessWidget {
  const AttendanceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Details'),
        backgroundColor: Colors.teal.shade700,
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Attendance Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildAttendanceRow('Total Days', '30'),
            _buildAttendanceRow('Present Days', '28'),
            _buildAttendanceRow('Leave Taken', '2'),
            _buildAttendanceRow('Absent Days', '0'),
            const SizedBox(height: 30),
            const Text(
              'Attendance History:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _attendanceHistoryTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildAttendanceRow(String title, String value) {
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

  Widget _attendanceHistoryTable() {
    final attendanceData = [
      {'Date': '01-01-2024', 'Status': 'Present'},
      {'Date': '02-01-2024', 'Status': 'Present'},
      {'Date': '03-01-2024', 'Status': 'Leave'},
      {'Date': '04-01-2024', 'Status': 'Present'},
      {'Date': '05-01-2024', 'Status': 'Absent'},
    ];

    return Column(
      children: [
        Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(2),
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
                  child: Text('Status', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            ...attendanceData.map(
              (entry) => TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Date']!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Status']!),
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

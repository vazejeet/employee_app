import 'package:employee_app/Drawer/drawer.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AttendanceDetailsPage extends StatelessWidget {
  const AttendanceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final languageController = Get.put(LanguageController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          languageController.translate('Attendance Details'),
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade700,
        iconTheme: IconThemeData(color: Colors.white),

      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  languageController.translate('Attendance Summary'),
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _buildAttendanceRow(languageController, 'Total Days', '30'),
                _buildAttendanceRow(languageController, 'Present Days', '28'),
                _buildAttendanceRow(languageController, 'Leave Taken', '2'),
                _buildAttendanceRow(languageController, 'Absent Days', '0'),
                const SizedBox(height: 30),
                Text(
                  languageController.translate('Attendance History:'),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _attendanceHistoryTable(languageController),
              ],
            )),
      ),
    );
  }

  Widget _buildAttendanceRow(LanguageController controller, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(controller.translate(title), style: const TextStyle(fontSize: 16)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      ),
    );
  }

  Widget _attendanceHistoryTable(LanguageController controller) {
    final attendanceData = [
      {'Date': '01-01-2024', 'Status': 'Present'},
      {'Date': '02-01-2024', 'Status': 'Present'},
      {'Date': '03-01-2024', 'Status': 'Leave'},
      {'Date': '04-01-2024', 'Status': 'Present'},
      {'Date': '05-01-2024', 'Status': 'Absent'},
    ];

    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
      },
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Colors.teal),
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(controller.translate('Date'), style: const TextStyle(color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(controller.translate('Status'), style: const TextStyle(color: Colors.white)),
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
                child: Text(controller.translate(entry['Status']!)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

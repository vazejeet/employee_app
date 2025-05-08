

import 'package:employee_app/Drawer/drawer.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LeaveDetailsPage extends StatelessWidget {
  const LeaveDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.put(LanguageController());

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Obx(() => Text(langController.translate('Leave Details'),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.teal.shade700,
        actions: [
          Obx(() => IconButton(
                icon: Icon(langController.isMarathi.value
                    ? Icons.language
                    : Icons.language_outlined,color: Colors.white,),
                onPressed: langController.toggleLanguage,
              )),
        ],
        iconTheme: IconThemeData(color: Colors.white),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  langController.translate('Balance Leave:'),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _leaveRow(langController.translate('Casual Leave (CL)'), '8'),
                _leaveRow(langController.translate('Sick Leave (SL)'), '5'),
                _leaveRow(langController.translate('Earned Leave (EL)'), '15'),
                const SizedBox(height: 30),
                Text(
                  langController.translate('Leave Summary:'),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _leaveHistoryTable(langController),
              ],
            )),
      ),
    );
  }

  Widget _leaveRow(String title, String days) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Text('$days days', style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _leaveHistoryTable(LanguageController langController) {
    final leaveData = [
      {'Date': '12-01-2024', 'Type': 'CL', 'Days': '1'},
      {'Date': '25-02-2024', 'Type': 'EL', 'Days': '2'},
      {'Date': '10-03-2024', 'Type': 'SL', 'Days': '1'},
    ];

    return Column(
      children: [
        Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            TableRow(
              decoration: const BoxDecoration(color: Colors.teal),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    langController.translate('Date'),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    langController.translate('Type'),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    langController.translate('Days'),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            ...leaveData.map(
              (entry) => TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Date']!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Type']!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(entry['Days']!),
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

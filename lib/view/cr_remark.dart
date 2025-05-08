import 'package:employee_app/Drawer/drawer.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CRRemarksPage extends StatelessWidget {
  const CRRemarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.put(LanguageController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              langController.translate('CR Remarks'),
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
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
                  langController.translate('CR Remarks Summary'),
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _buildCRRow(langController.translate('CR by Authority From'), 'John Doe'),
                _buildCRRow(langController.translate('Date of CR'), '01-05-2024'),
                _buildCRRow(langController.translate('CR Remark'), langController.translate('Exceeds expectations in all tasks.')),
                const SizedBox(height: 30),
                Text(
                  langController.translate('Previous CR Remarks:'),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                _crRemarksHistory(langController),
              ],
            )),
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

  Widget _crRemarksHistory(LanguageController langController) {
    final crData = [
      {'Date': '01-01-2023', 'Remark': langController.translate('Satisfactory performance')},
      {'Date': '01-06-2023', 'Remark': langController.translate('Needs improvement in time management')},
      {'Date': '01-12-2023', 'Remark': langController.translate('Excellent contribution to the project')},
    ];

    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(3),
      },
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Colors.teal),
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(langController.translate('Date'), style: const TextStyle(color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(langController.translate('CR Remarks'), style: const TextStyle(color: Colors.white)),
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
    );
  }
}

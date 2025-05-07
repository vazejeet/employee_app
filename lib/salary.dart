import 'package:employee_app/Drawer/drawer.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:flutter/material.dart';


// class SalaryDetailsPage extends StatelessWidget {
//   const SalaryDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Salary Details'),
//         backgroundColor: Colors.teal.shade700,
//       ),
//       drawer: const CustomDrawer(),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             _buildInfoRow('Pay Scale / वेतनमान', '5200-20200'),
//             _buildInfoRow('Basic Pay / मूळ वेतन', '₹28,000'),
//             _buildInfoRow('DA', '₹4,500'),
//             _buildInfoRow('HRA', '₹3,000'),
//             _buildInfoRow('Other Allowances', '₹2,000'),
//             _buildInfoRow('Gross Salary', '₹37,500'),
//             const Divider(height: 32),
//             _buildInfoRow('PF Deduction', '₹2,800'),
//             _buildInfoRow('Professional Tax', '₹200'),
//             _buildInfoRow('Other Deductions', '₹300'),
//             const Divider(height: 32),
//             _buildInfoRow('Net Pay', '₹34,200'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoRow(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Text(
//               title,
//               style: const TextStyle(fontSize: 16),
//             ),
//           ),
//           Text(
//             value,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }



 import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SalaryDetailsPage extends StatelessWidget {
  const SalaryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.put(LanguageController());

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(langController.translate('Salary Details'))),
        backgroundColor: Colors.teal.shade700,
        actions: [
          Obx(() => IconButton(
                icon: Icon(langController.isMarathi.value
                    ? Icons.language
                    : Icons.language_outlined),
                onPressed: langController.toggleLanguage,
              )),
        ],
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => ListView(
              children: [
                _buildInfoRow(langController.translate('Pay Scale / वेतनमान'), '5200-20200'),
                _buildInfoRow(langController.translate('Basic Pay / मूळ वेतन'), '₹28,000'),
                _buildInfoRow(langController.translate('DA'), '₹4,500'),
                _buildInfoRow(langController.translate('HRA'), '₹3,000'),
                _buildInfoRow(langController.translate('Other Allowances'), '₹2,000'),
                _buildInfoRow(langController.translate('Gross Salary'), '₹37,500'),
                const Divider(height: 32),
                _buildInfoRow(langController.translate('PF Deduction'), '₹2,800'),
                _buildInfoRow(langController.translate('Professional Tax'), '₹200'),
                _buildInfoRow(langController.translate('Other Deductions'), '₹300'),
                const Divider(height: 32),
                _buildInfoRow(langController.translate('Net Pay'), '₹34,200'),
              ],
            )),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

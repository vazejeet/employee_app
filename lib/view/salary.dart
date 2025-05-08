import 'package:employee_app/Drawer/drawer.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SalaryDetailsPage extends StatelessWidget {
  const SalaryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final langController = Get.put(LanguageController());
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        title: Obx(() => Text(
              langController.translate('Salary Details'),
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )),
      backgroundColor: Colors.teal.shade700,
        elevation: 2, // Subtle shadow
        actions: [
          Obx(() => IconButton(
                icon: Icon(
                  langController.isMarathi.value
                      ? Icons.translate
                      : Icons.translate_outlined,
                  color: Colors.white,
                ),
                onPressed: langController.toggleLanguage,
              )),
        ],
        iconTheme: IconThemeData(color: Colors.white),

      ),
      drawer: const CustomDrawer(),
      
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => Card(
              elevation: 8, // More pronounced shadow for the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16), // More rounded corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0), // Increased padding inside the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      langController.translate('Salary Breakdown'),
                      style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color:  Colors.teal.shade700), // Prominent title
                    ),
                    const SizedBox(height: 20),
                    _buildInfoRow(
                        langController.translate('Pay Scale / वेतनमान'),
                        '5200-20200',
                        icon: Icons.attach_money), // Added icons
                    _buildInfoRow(
                        langController.translate('Basic Pay / मूळ वेतन'),
                        '₹28,000',
                        icon: Icons.account_balance),
                    _buildInfoRow(langController.translate('DA'), '₹4,500',
                        icon: Icons.trending_up),
                    _buildInfoRow(langController.translate('HRA'), '₹3,000',
                        icon: Icons.home_outlined),
                    _buildInfoRow(
                        langController.translate('Other Allowances'),
                        '₹2,000',
                        icon: Icons.add_circle_outline),
                    const Divider(height: 40, thickness: 1.5), // More visible divider
                    Text(
                      langController.translate('Deductions'),
                      style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.redAccent.shade700), // Distinct title for deductions
                    ),
                    const SizedBox(height: 10),
                    _buildInfoRow(
                        langController.translate('PF Deduction'),
                        '₹2,800',
                        icon: Icons.remove_circle_outline,
                        valueColor: Colors.redAccent.shade400), // Colored deduction values
                    _buildInfoRow(
                        langController.translate('Professional Tax'),
                        '₹200',
                        icon: Icons.remove_circle_outline,
                        valueColor: Colors.redAccent.shade400),
                    _buildInfoRow(
                        langController.translate('Other Deductions'),
                        '₹300',
                        icon: Icons.remove_circle_outline,
                        valueColor: Colors.redAccent.shade400),
                    const Divider(height: 40, thickness: 1.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          langController.translate('Net Pay'),
                          style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700), // Highlighted net pay
                        ),
                        Text(
                          '₹34,200',
                          style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget _buildInfoRow(String title, String value,
      {IconData? icon, Color? valueColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0), // Increased vertical padding
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(icon, color: Colors.grey.shade600), // Added leading icon
            ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.black87), // Slightly darker text
            ),
          ),
          Text(
            value,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: valueColor ?? Colors.black87), // Optional color for value
          ),
        ],
      ),
    );
  }
}
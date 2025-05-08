// import 'package:flutter/material.dart';

// class EmployeeProfileScreen extends StatelessWidget {
//   const EmployeeProfileScreen({super.key});

//   Widget buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 12.0),
//       child: Text(title,
//           style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
//     );
//   }

//   Widget buildField(String label, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(flex: 4, child: Text("$label:", style: const TextStyle(fontWeight: FontWeight.w600))),
//           Expanded(flex: 6, child: Text(value)),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Employee Profile')),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             buildSectionTitle("👤 Personal Details"),
//             buildField("Portfolio Name / पोर्टफोलिओचे नाव", "Shivaji More"),
//             buildField("Employee Name / कर्मचा-याचे नाव", "Shivaji More"),
//             buildField("Employee Name (Marathi)", "शिवाजी मोरे"),
//             buildField("DOB / जन्म दिनांक", "01/01/1985"),
//             buildField("Gender / लिंग", "Male / पुरुष"),
//             buildField("Mobile / मोबाईल क्र", "9876543210"),
//             buildField("Email / ईमेल", "shivaji@domain.com"),
//             buildField("Place of Birth / जन्मस्थान", "Pune"),
//             buildField("Identification Mark / ओळख चिन्ह", "Mole on neck"),
//             buildField("Caste / जात", "Maratha"),
//             buildField("Religion / धर्म", "Hindu"),
//             buildField("Handicapped / दिव्यांग आहे का?", "No"),
//             buildField("Blind / अंधत्व आहे का?", "No"),
//             buildField("Photo / छायाचित्र", "Uploaded"),

//             buildSectionTitle("🏢 Employment Details"),
//             buildField("Old PF ID", "S12345"),
//             buildField("Pay Scale / वेतनमान", "9300-34800"),
//             buildField("Basic Pay / मूळ वेतन", "25,000"),
//             buildField("Date of Join / रुजू होण्याची तारीख", "01/04/2010"),
//             buildField("Date of Retirement / सेवानिवृत्ती", "01/04/2045"),
//             buildField("Department / विभाग", "Sanitation"),
//             buildField("Designation / पदनाम", "Supervisor"),
//             buildField("Employee Type / कर्मचारी प्रकार", "Permanent"),
//             buildField("Prabhag / प्रभाग", "Ward 15"),
//             buildField("Office Location / कार्यालयाचे स्थान", "Vasai Municipal Office"),
//             buildField("Essl ID / Essl आयडी", "ESSL09876"),

//             buildSectionTitle("🏦 Bank Details"),
//             buildField("Bank Name / बँकेचे नाव", "State Bank of India"),
//             buildField("Bank Acc No. / बँक खाते क्र", "1234567890"),
//             buildField("IFSC / आयएफएससी कोड", "SBIN0001234"),

//             buildSectionTitle("📁 Service Book"),
//             buildField("Service Book / सर्व्हिस बुक", "Available"),
//             buildField("Service Book Remark / रिमार्क", "Verified"),
//             buildField("Upload Service Book", "Uploaded"),

//             buildSectionTitle("🔁 Transfers"),
//             buildField("Transfered / बदली झाली आहे का?", "Yes"),
//             buildField("Transfer Date / बदली तारीख", "01/06/2021"),
//             buildField("Upload Transfer Order", "Uploaded"),
//             buildField("Transfered From / कोणत्या ठिकाणाहून", "Nashik"),
//             buildField("Transfered From Date", "01/06/2021"),
//             buildField("Transfered To", "Vasai"),
//             buildField("Transfer / Deputation", "Regular Transfer"),

//             buildSectionTitle("💼 Increments & Bonus"),
//             buildField("Class", "III"),
//             buildField("Last Year Increment", "3%"),
//             buildField("Current Year Increment", "5%"),
//             buildField("Bonus Increment Letter", "Available"),

//             buildSectionTitle("📋 CR Remarks & Exit"),
//             buildField("CR Remark By Authority From", "Good performance"),
//             buildField("CR Remark By Authority To", "Recommended for promotion"),
//             buildField("Name Of Pension System", "EPFO"),
//             buildField("Name Of Pathsanstha", "XYZ Co-op Credit Society"),
//             buildField("Exit Date", "N/A"),
//             buildField("Exit Remark", "Still in service"),

//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:employee_app/Authentication/login.dart';
import 'package:employee_app/Drawer/drawer.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfilePage extends StatelessWidget {
  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:   Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor:   Colors.teal.shade500,
        title: Text(languageController.translate("Profile"),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),

      ),
       drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              //color: Colors.teal.shade500,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Obx(() => ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        _buildInfoRow("Portfolio Name", "Civil Engineering"),
                        Divider(),
                        _buildInfoRow("Employee Name", "Rahul Patil"),
                        Divider(),
                        _buildInfoRow("Employee Name (Marathi)", "राहुल पाटील"),
                        Divider(),
                        _buildInfoRow("DOB", "12/07/1990"),
                        Divider(),
                        _buildInfoRow("Gender", "Male"),
                        Divider(),
                        _buildInfoRow("Mobile", "9876543210"),
                        Divider(),
                        _buildInfoRow("Email", "rahul@example.com"),
                        Divider(),
                        _buildInfoRow("Place of Birth", "Pune"),
                        Divider(),
                        _buildInfoRow(
                            "Identification Mark", "Mole on left cheek"),
                        Divider(),
                        _buildInfoRow("Caste", "Maratha"),
                        Divider(),
                        _buildInfoRow("Religion", "Hindu"),
                        Divider(),
                        _buildInfoRow("Handicapped", "No"),
                        Divider(),
                        _buildInfoRow("Blind", "No"),
                        Divider(),
                        _buildInfoRow("Photo", "Available"),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              languageController.translate(key),
              style: TextStyle(fontSize: 16,),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
               
              ),
            ),
          ),
        ],
      ),
    );
  }
}

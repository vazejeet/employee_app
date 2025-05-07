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





// import 'package:flutter/material.dart';



// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   bool isMarathi = false; // Language toggle variable

//   // Sample data (you can replace this with dynamic values later)
//   final Map<String, String> englishData = {
//     "Portfolio Name": "Shivaji More",
//     "Employee Name": "Shivaji More",
//     "Employee Name (Marathi)": "शिवाजी मोरे",
//     "DOB": "01/01/1985",
//     "Gender": "Male",
//     "Mobile": "9876543210",
//     "Email": "shivaji@domain.com",
//     "Place of Birth": "Pune",
//     "Identification Mark": "Mole on neck",
//     "Caste": "Maratha",
//     "Religion": "Hindu",
//     "Handicapped": "No",
//     "Blind": "No",
//     "Photo": "Uploaded"
//   };

//   final Map<String, String> marathiData = {
//     "Portfolio Name": "शिवाजी मोरे",
//     "Employee Name": "शिवाजी मोरे",
//     "Employee Name (Marathi)": "शिवाजी मोरे",
//     "DOB": "01/01/1985",
//     "Gender": "पुरुष",
//     "Mobile": "9876543210",
//     "Email": "shivaji@domain.com",
//     "Place of Birth": "पुणे",
//     "Identification Mark": "गळ्यावरील तळी",
//     "Caste": "म्हाराष्ट्र",
//     "Religion": "हिंदू",
//     "Handicapped": "नाही",
//     "Blind": "नाही",
//     "Photo": "अपलोड केले"
//   };

//   // Helper function to build sections and fields
//   Widget buildField(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Expanded(child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
//           Expanded(child: Text(value, style: TextStyle(fontSize: 16, color: Colors.grey))),
//         ],
//       ),
//     );
//   }

//   // Helper function to build section title
//   Widget buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0),
//       child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final data = isMarathi ? marathiData : englishData;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Page'),
//         actions: [
//           IconButton(
//             icon: Icon(isMarathi ? Icons.language : Icons.language_outlined),
//             onPressed: () {
//               setState(() {
//                 isMarathi = !isMarathi;
//               });
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             buildSectionTitle(isMarathi ? "👤 वैयक्तिक तपशील" : "👤 Personal Details"),
//             buildField(isMarathi ? "पोर्टफोलिओ नाव" : "Portfolio Name", data["Portfolio Name"]!),
//             buildField(isMarathi ? "कर्मचारी नाव" : "Employee Name", data["Employee Name"]!),
//             buildField(isMarathi ? "कर्मचारी नाव (मराठीत)" : "Employee Name (Marathi)", data["Employee Name (Marathi)"]!),
//             buildField(isMarathi ? "जन्म तारीख" : "DOB", data["DOB"]!),
//             buildField(isMarathi ? "लिंग" : "Gender", data["Gender"]!),
//             buildField(isMarathi ? "मोबाईल" : "Mobile", data["Mobile"]!),
//             buildField(isMarathi ? "ईमेल" : "Email", data["Email"]!),
//             buildField(isMarathi ? "जन्मस्थान" : "Place of Birth", data["Place of Birth"]!),
//             buildField(isMarathi ? "ओळख चिन्ह" : "Identification Mark", data["Identification Mark"]!),
//             buildField(isMarathi ? "जात" : "Caste", data["Caste"]!),
//             buildField(isMarathi ? "धर्म" : "Religion", data["Religion"]!),
//             buildField(isMarathi ? "दिव्यांग आहे का?" : "Handicapped", data["Handicapped"]!),
//             buildField(isMarathi ? "अंधत्व आहे का?" : "Blind", data["Blind"]!),
//             buildField(isMarathi ? "छायाचित्र" : "Photo", data["Photo"]!),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Add logout functionality here
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logging out...")));
//               },
//               child: Text(isMarathi ? "लॉगआउट" : "Logout"),
//             ),
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
import 'package:shared_preferences/shared_preferences.dart';


// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   bool isMarathi = false;

//   final Map<String, String> englishData = {
//     "Portfolio Name": "Shivaji More",
//     "Employee Name": "Shivaji More",
//     "Employee Name (Marathi)": "शिवाजी मोरे",
//     "DOB": "01/01/1985",
//     "Gender": "Male",
//     "Mobile": "9876543210",
//     "Email": "shivaji@domain.com",
//     "Place of Birth": "Pune",
//     "Identification Mark": "Mole on neck",
//     "Caste": "Maratha",
//     "Religion": "Hindu",
//     "Handicapped": "No",
//     "Blind": "No",
//     "Photo": "Uploaded"
//   };

//   final Map<String, String> marathiData = {
//     "Portfolio Name": "शिवाजी मोरे",
//     "Employee Name": "शिवाजी मोरे",
//     "Employee Name (Marathi)": "शिवाजी मोरे",
//     "DOB": "01/01/1985",
//     "Gender": "पुरुष",
//     "Mobile": "9876543210",
//     "Email": "shivaji@domain.com",
//     "Place of Birth": "पुणे",
//     "Identification Mark": "गळ्यावरील तळी",
//     "Caste": "म्हाराष्ट्र",
//     "Religion": "हिंदू",
//     "Handicapped": "नाही",
//     "Blind": "नाही",
//     "Photo": "अपलोड केले"
//   };

//   Widget buildField(String title, String value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Expanded(child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
//           Expanded(child: Text(value, style: const TextStyle(fontSize: 16, color: Colors.grey))),
//         ],
//       ),
//     );
//   }

//   Widget buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16.0),
//       child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//     );
//   }

//   Future<void> _logout() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('isLoggedIn', false);

//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (_) => const LoginScreen()),
//       (route) => false,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final data = isMarathi ? marathiData : englishData;

//     return Scaffold(
//       drawer: const CustomDrawer(),

//       appBar: AppBar(
//         title: const Text('Profile Page'),
//         actions: [
//           IconButton(
//             icon: Icon(isMarathi ? Icons.language : Icons.language_outlined),
//             onPressed: () => setState(() => isMarathi = !isMarathi),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             buildSectionTitle(isMarathi ? "👤 वैयक्तिक तपशील" : "👤 Personal Details"),
//             ...data.entries.map((e) => buildField(isMarathi ? _translate(e.key) : e.key, e.value)),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _logout,
//               child: Text(isMarathi ? "लॉगआउट" : "Logout"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String _translate(String key) {
//     final translations = {
//       "Portfolio Name": "पोर्टफोलिओ नाव",
//       "Employee Name": "कर्मचारी नाव",
//       "Employee Name (Marathi)": "कर्मचारी नाव (मराठीत)",
//       "DOB": "जन्म तारीख",
//       "Gender": "लिंग",
//       "Mobile": "मोबाईल",
//       "Email": "ईमेल",
//       "Place of Birth": "जन्मस्थान",
//       "Identification Mark": "ओळख चिन्ह",
//       "Caste": "जात",
//       "Religion": "धर्म",
//       "Handicapped": "दिव्यांग आहे का?",
//       "Blind": "अंधत्व आहे का?",
//       "Photo": "छायाचित्र"
//     };
//     return translations[key] ?? key;
//   }
// }




import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  final LanguageController languageController = Get.put(LanguageController());

  ProfilePage({super.key});

  void _logout() {
    // Add your logout logic here
    Get.snackbar("Logout", "User has been logged out");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(languageController.translate("Profile Page"))),
        backgroundColor: Colors.teal.shade700,
      ),
       drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() => ListView(
              children: [
                _buildInfoRow("Portfolio Name", "Civil Engineering"),
                _buildInfoRow("Employee Name", "Rahul Patil"),
                _buildInfoRow("Employee Name (Marathi)", "राहुल पाटील"),
                _buildInfoRow("DOB", "12/07/1990"),
                _buildInfoRow("Gender", "Male"),
                _buildInfoRow("Mobile", "9876543210"),
                _buildInfoRow("Email", "rahul@example.com"),
                _buildInfoRow("Place of Birth", "Pune"),
                _buildInfoRow("Identification Mark", "Mole on left cheek"),
                _buildInfoRow("Caste", "Maratha"),
                _buildInfoRow("Religion", "Hindu"),
                _buildInfoRow("Handicapped", "No"),
                _buildInfoRow("Blind", "No"),
                _buildInfoRow("Photo", "Available"),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _logout,
                  child: Text(languageController.translate("Logout")),
                ),
              ],
            )),
      ),
    );
  }

  Widget _buildInfoRow(String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(languageController.translate(key))),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

import 'package:get/get.dart';

// class LanguageController extends GetxController {
//   var isMarathi = false.obs;

//   void toggleLanguage() {
//     isMarathi.value = !isMarathi.value;
//   }

//   String translate(String key) {
//     final translations = {
//       "Salary Details": "पगार तपशील",
//       "Pay Scale / वेतनमान": "वेतनमान",
//       "Basic Pay / मूळ वेतन": "मूळ वेतन",
//       "DA": "महागाई भत्ता",
//       "HRA": "घरभाडे भत्ता",
//       "Other Allowances": "इतर भत्ते",
//       "Gross Salary": "एकूण पगार",
//       "PF Deduction": "पीएफ कपात",
//       "Professional Tax": "व्यावसायिक कर",
//       "Other Deductions": "इतर कपाती",
//       "Net Pay": "शुद्ध पगार",
//       "Leave Details": "रजा तपशील",
//       "Balance Leave:": "उर्वरित रजा:",
//       "Casual Leave (CL)": "सामान्य रजा (CL)",
//       "Sick Leave (SL)": "सिक रजा (SL)",
//       "Earned Leave (EL)": "कमावलेली रजा (EL)",
//       "Leave Summary:": "रजा सारांश:",
//       "Date": "तारीख",
//       "Type": "प्रकार",
//       "Days": "दिवस",
//       "Profile Page": "प्रोफाइल पृष्ठ",
//       "Logout": "लॉगआउट",
//       // Add more keys as needed
//     };
//     return isMarathi.value ? (translations[key] ?? key) : key;
//   }
// }



class LanguageController extends GetxController {
  var isMarathi = false.obs;

  void toggleLanguage() {
    isMarathi.value = !isMarathi.value;
  }

  String translate(String key) {
    final translations = {
      "Salary Details": "पगार तपशील",
      "Pay Scale / वेतनमान": "वेतनमान",
      "Basic Pay / मूळ वेतन": "मूळ वेतन",
      "DA": "महागाई भत्ता",
      "HRA": "घरभाडे भत्ता",
      "Other Allowances": "इतर भत्ते",
      "Gross Salary": "एकूण पगार",
      "PF Deduction": "पीएफ कपात",
      "Professional Tax": "व्यावसायिक कर",
      "Other Deductions": "इतर कपाती",
      "Net Pay": "शुद्ध पगार",
      "Leave Details": "रजा तपशील",
      "Balance Leave:": "उर्वरित रजा:",
      "Casual Leave (CL)": "सामान्य रजा (CL)",
      "Sick Leave (SL)": "सिक रजा (SL)",
      "Earned Leave (EL)": "कमावलेली रजा (EL)",
      "Leave Summary:": "रजा सारांश:",
      "Date": "तारीख",
      "Type": "प्रकार",
      "Days": "दिवस",
      "Profile Page": "प्रोफाइल पृष्ठ",
      "Logout": "लॉगआउट",

      // Newly added fields
      "Portfolio Name": "पोर्टफोलिओ नाव",
      "Employee Name": "कर्मचारी नाव",
      "Employee Name (Marathi)": "कर्मचारी नाव (मराठीत)",
      "DOB": "जन्म तारीख",
      "Gender": "लिंग",
      "Mobile": "मोबाईल",
      "Email": "ईमेल",
      "Place of Birth": "जन्मस्थान",
      "Identification Mark": "ओळख चिन्ह",
      "Caste": "जात",
      "Religion": "धर्म",
      "Handicapped": "दिव्यांग आहे का?",
      "Blind": "अंधत्व आहे का?",
      "Photo": "छायाचित्र",
    };

    return isMarathi.value ? (translations[key] ?? key) : key;
  }
}

import 'package:get/get.dart';

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

      "CR Remarks": "सीआर टिप्पण्या",
      "CR Remarks Summary": "सीआर सारांश",
      "CR by Authority From": "अधिकाऱ्याचे नाव",
      "Date of CR": "सीआरची तारीख",
      "CR Remark": "सीआर टिप्पणी",
      "Previous CR Remarks:": "मागील सीआर टिप्पण्या:",
      "Satisfactory performance": "समाधानकारक कामगिरी",
      "Needs improvement in time management": "वेळ व्यवस्थापनात सुधारणा आवश्यक",
      "Excellent contribution to the project": "प्रकल्पात उत्कृष्ट योगदान",
      "CR Remarks": "सीआर टिप्पणी",

      "Attendance Details": "हजेरी तपशील",
      "Attendance Summary": "हजेरी सारांश",
      "Attendance History:": "हजेरी इतिहास:",
      "Total Days": "एकूण दिवस",
      "Present Days": "हजर दिवस",
      "Leave Taken": "घेतलेल्या रजा",
      "Absent Days": "गैरहजर दिवस",
      "Status": "स्थिती",
      "Present": "हजर",
      "Leave": "रजा",
      "Absent": "गैरहजर",
    };

    return isMarathi.value ? (translations[key] ?? key) : key;
  }
}

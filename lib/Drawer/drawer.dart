import 'package:employee_app/Authentication/profile.dart';
import 'package:employee_app/attendance.dart';
import 'package:employee_app/cr_remark.dart';
import 'package:employee_app/leave.dart';
import 'package:employee_app/multilingual/language.dart';
import 'package:employee_app/salary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Add other imports as you build more pages

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageController langController = Get.find();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 30, backgroundColor: Colors.white),
                SizedBox(height: 10),
                Text(
                  'Welcome Employee',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'work@123',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          _buildDrawerItem(context, Icons.person, 'Profile', () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ProfilePage()));
          }),
          _buildDrawerItem(context, Icons.beach_access, 'Leave Details', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LeaveDetailsPage()),
            );
          }),
          _buildDrawerItem(context, Icons.money, 'Salary Details', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SalaryDetailsPage()),
            );
          }),

          //  _buildDrawerItem(context, Icons.money, 'Attendance Details', () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (_) => const AttendanceDetailsPage()),
          //   );
          // }),
          //  _buildDrawerItem(context, Icons.money, 'Cr remark', () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (_) => const CRRemarksPage()),
          //   );
          // }),

         // const Divider(),
          // _buildDrawerItem1(context, Icons.language, 'Language Translate', () {
          //   Obx(() => IconButton(
          //         icon: Icon(
          //           langController.isMarathi.value
          //               ? Icons.language
          //               : Icons.language_outlined,
          //         ),
          //         onPressed: langController.toggleLanguage,
          //         tooltip: 'Toggle Language',
          //       ));
          // }),

          
          const Divider(),
          _buildDrawerItem(context, Icons.logout, 'Logout', () {
            Navigator.popUntil(context, (route) => route.isFirst);
          }),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal.shade700),
      title: Text(title),
      onTap: onTap,
    );
  }

   Widget _buildDrawerItem1(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Text(title),
      title: Icon(Icons.language),
      onTap: onTap,
    );
  }
}

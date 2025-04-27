import 'package:aurio_admin/view/admin_profile_screen/admin_profile_screen.dart';
import 'package:aurio_admin/view/ai_logs_screen/ai_logs_screen.dart';
import 'package:aurio_admin/view/analytics_screen/analytics_screen.dart';
import 'package:aurio_admin/view/dashboard_screen/dashboard_screen.dart';
import 'package:aurio_admin/view/feedback_Screen/feedback_screen.dart';
import 'package:aurio_admin/view/login_screen/login_screen.dart';
import 'package:aurio_admin/view/reports_screen/reports_screen.dart';
import 'package:aurio_admin/view/send_alerts_screen/send_alerts_screen.dart';
import 'package:aurio_admin/view/settings_screen/settings_screen.dart';
import 'package:aurio_admin/view/student_details_screen/student_details_screen.dart';
import 'package:aurio_admin/view/students_screen/students_screen.dart';
import 'package:aurio_admin/view/user_management_screen/user_management_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        DashboardScreen.routeName: (_) => DashboardScreen(),
        StudentsScreen.routeName: (_) => StudentsScreen(),
        StudentDetailsScreen.routeName: (_) => StudentDetailsScreen(),
        AnalyticsScreen.routeName: (_) => AnalyticsScreen(),
        AILogsScreen.routeName: (_) => AILogsScreen(),
        UserManagementScreen.routeName: (_) => UserManagementScreen(),
        SettingsScreen.routeName: (_) => SettingsScreen(),
        ReportsScreen.routeName: (_) => ReportsScreen(),
        FeedbackScreen.routeName: (_) => FeedbackScreen(),
        SendAlertsScreen.routeName: (_) => SendAlertsScreen(),
        AdminProfileScreen.routeName: (_) => AdminProfileScreen(),
      },
    );
  }
}

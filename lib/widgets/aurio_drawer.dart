import 'package:aurio_admin/view/admin_profile_screen/admin_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:aurio_admin/view/ai_logs_screen/ai_logs_screen.dart';
import 'package:aurio_admin/view/analytics_screen/analytics_screen.dart';
import 'package:aurio_admin/view/dashboard_screen/dashboard_screen.dart';
import 'package:aurio_admin/view/feedback_Screen/feedback_screen.dart';
import 'package:aurio_admin/view/login_screen/login_screen.dart';
import 'package:aurio_admin/view/reports_screen/reports_screen.dart';
import 'package:aurio_admin/view/send_alerts_screen/send_alerts_screen.dart';
import 'package:aurio_admin/view/settings_screen/settings_screen.dart';

import 'package:aurio_admin/view/students_screen/students_screen.dart';
import 'package:aurio_admin/view/user_management_screen/user_management_screen.dart';

class AurioDrawer extends StatelessWidget {
  const AurioDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0XFF1A1A1A),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0XFF4B0082)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.admin_panel_settings,
                  color: Color(0XFF1A1A1A),
                  size: 40,
                ),
                SizedBox(height: 12),
                Text(
                  'Aurio Admin',
                  style: TextStyle(
                    color: Color(0XFF1A1A1A),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _buildDrawerItem(
            context,
            Icons.dashboard,
            'Dashboard',
            DashboardScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.group,
            'Students',
            StudentsScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.analytics,
            'Analytics',
            AnalyticsScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.auto_fix_high,
            'AI Logs',
            AILogsScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.manage_accounts,
            'User Management',
            UserManagementScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.insert_drive_file,
            'Reports',
            ReportsScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.feedback,
            'Feedback',
            FeedbackScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.notifications,
            'Send Alerts',
            SendAlertsScreen.routeName,
          ),
          Divider(),
          _buildDrawerItem(
            context,
            Icons.settings,
            'Settings',
            SettingsScreen.routeName,
          ),
          _buildDrawerItem(
            context,
            Icons.person,
            'My Profile',
            AdminProfileScreen.routeName,
          ),

          ListTile(
            leading: Icon(Icons.logout, color: Color(0xFF8c8c8c)),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.routeName,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context,
    IconData icon,
    String title,
    String routeName,
  ) {
    return ListTile(
      tileColor: Color(0XFF1A1A1A),
      leading: Icon(icon, color: Color(0xFF8c8c8c)),
      title: Text(
        title,
        style: TextStyle(color: Color(0xFF00CED1), fontSize: 16),
      ),
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
      },
    );
  }
}

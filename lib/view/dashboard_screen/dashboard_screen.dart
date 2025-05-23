import 'package:aurio_admin/widgets/aurio_appbar.dart';
import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AurioDrawer(),
      backgroundColor: const Color(0XFF0C0C1A),
      appBar: AurioAppBar(title: "Dashboard"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width > 800 ? 4 : 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
          children: [
            _buildDashboardCard(
              icon: Icons.group,
              label: 'Active Users',
              value: '450',
              context: context,
            ),
            _buildDashboardCard(
              icon: Icons.access_time,
              label: 'Daily Study Hours',
              value: '1200h',
              context: context,
            ),
            _buildDashboardCard(
              icon: Icons.school,
              label: 'AI Plan Effectiveness',
              value: '92%',
              context: context,
            ),
            _buildDashboardCard(
              icon: Icons.error,
              label: 'Missed Sessions',
              value: '30',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard({
    required IconData icon,
    required String label,
    required String value,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF0C0C1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0XFF4B0082), width: 2),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5)),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Color(0XFF4B0082)),
          SizedBox(height: 16),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0XFF4B0082),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF8c8c8c), fontSize: 16),
          ),
        ],
      ),
    );
  }
}

import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  static const routeName = '/analytics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AurioDrawer(),

      backgroundColor: const Color(0XFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Color(0XFF1A1A1A),
        elevation: 1,
        title: Text(
          'Analytics',
          style: TextStyle(
            color: Color(0XFF4B0082),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildChartCard("Study Time Per Day"),
            SizedBox(height: 24),
            _buildChartCard("AI Plan Effectiveness"),
            SizedBox(height: 24),
            _buildChartCard("Session Completion Rate"),
          ],
        ),
      ),
    );
  }

  Widget _buildChartCard(String title) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0XFF1A1A1A),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0XFF4B0082),
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0XFF1A1A1A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                "Chart Placeholder",
                style: TextStyle(color: Color(0xFF8c8c8c)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

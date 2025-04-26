import 'package:flutter/material.dart';

class AILogsScreen extends StatelessWidget {
  static const routeName = '/ai-logs';

  // Dummy Data (later load from Controller)
  final List<Map<String, dynamic>> aiLogs = [
    {'student': 'Alice Johnson', 'date': '2025-04-20', 'effectiveness': '90%'},
    {'student': 'Bob Smith', 'date': '2025-04-19', 'effectiveness': '85%'},
    {'student': 'Charlie Davis', 'date': '2025-04-18', 'effectiveness': '92%'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f6f5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'AI Logs',
          style: TextStyle(
            color: Color(0xFF87CEEB),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: aiLogs.length,
        itemBuilder: (context, index) {
          final log = aiLogs[index];
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  log['student'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Color(0xFF8c8c8c),
                    ),
                    SizedBox(width: 6),
                    Text(
                      log['date'],
                      style: TextStyle(color: Color(0xFF8c8c8c)),
                    ),
                    Spacer(),
                    Text(
                      log['effectiveness'],
                      style: TextStyle(
                        color: Color(0xFFFFD700),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

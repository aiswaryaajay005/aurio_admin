import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  static const routeName = '/feedback';

  // Dummy Data (later load from Controller)
  final List<Map<String, String>> feedbacks = [
    {
      'user': 'Alice Johnson',
      'type': 'Bug',
      'message': 'Timer is not working properly during study session.',
      'date': '2025-04-20',
    },
    {
      'user': 'Bob Smith',
      'type': 'Suggestion',
      'message': 'Please add support for custom subjects!',
      'date': '2025-04-18',
    },
    {
      'user': 'Charlie Davis',
      'type': 'General',
      'message': 'App design is very clean and easy to use. Great job!',
      'date': '2025-04-15',
    },
  ];

  FeedbackScreen({super.key});

  Color _getBadgeColor(String type) {
    switch (type) {
      case 'Bug':
        return Colors.redAccent;
      case 'Suggestion':
        return Colors.green;
      default:
        return Colors.blueAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AurioDrawer(),

      backgroundColor: const Color(0xFFf5f6f5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Feedback',
          style: TextStyle(
            color: Color(0xFF87CEEB),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: feedbacks.length,
        itemBuilder: (context, index) {
          final feedback = feedbacks[index];
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
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF87CEEB),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        feedback['user']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: _getBadgeColor(feedback['type']!),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        feedback['type']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(feedback['message']!, style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    feedback['date']!,
                    style: TextStyle(color: Color(0xFF8c8c8c), fontSize: 14),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

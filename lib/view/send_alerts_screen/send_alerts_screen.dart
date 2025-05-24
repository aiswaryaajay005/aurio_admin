import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class SendAlertsScreen extends StatefulWidget {
  static const routeName = '/send-alerts';

  @override
  State<SendAlertsScreen> createState() => _SendAlertsScreenState();
}

class _SendAlertsScreenState extends State<SendAlertsScreen> {
  String selectedStudent = 'All Students';
  final messageController = TextEditingController();

  final List<String> students = [
    'All Students',
    'Alice Johnson',
    'Bob Smith',
    'Charlie Davis',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AurioDrawer(),

      backgroundColor: const Color(0XFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Color(0XFF1A1A1A),
        elevation: 1,
        title: Text(
          'Send Alerts',
          style: TextStyle(
            color: Color(0XFF4B0082),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Student",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0XFF4B0082),
              ),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0XFF1A1A1A),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: DropdownButton<String>(
                value: selectedStudent,
                isExpanded: true,
                underline: SizedBox(),
                onChanged: (value) {
                  setState(() {
                    selectedStudent = value!;
                  });
                },
                items:
                    students.map((student) {
                      return DropdownMenuItem<String>(
                        value: student,
                        child: Text(student),
                      );
                    }).toList(),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Message",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0XFF4B0082),
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Color(0XFF1A1A1A),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: TextField(
                controller: messageController,
                maxLines: 6,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Enter your motivational message...",
                ),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Send Alert Logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Alert sent successfully!')),
                  );
                  messageController.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF4B0082),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Send Alert",
                  style: TextStyle(fontSize: 18, color: Color(0XFF1A1A1A)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

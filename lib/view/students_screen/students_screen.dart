import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  static const routeName = '/students';

  // Dummy Data (later will fetch from Controller)
  final List<Map<String, dynamic>> students = [
    {'name': 'Alice Johnson', 'email': 'alice@example.com', 'progress': 85},
    {'name': 'Bob Smith', 'email': 'bob@example.com', 'progress': 72},
    {'name': 'Charlie Davis', 'email': 'charlie@example.com', 'progress': 90},
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
          'Students',
          style: TextStyle(
            color: Color(0XFF4B0082),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return GestureDetector(
            onTap: () {
              // TODO: Navigate to Student Details
              Navigator.pushNamed(
                context,
                '/student-details',
                arguments: student,
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0XFF1A1A1A),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0XFF4B0082),
                    child: Icon(Icons.person, color: Color(0XFF1A1A1A)),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          student['name'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          student['email'],
                          style: TextStyle(color: Color(0xFF8c8c8c)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${student['progress']}%",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFD700), // Accent color for highlight
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

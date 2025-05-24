import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class UserManagementScreen extends StatelessWidget {
  static const routeName = '/user-management';

  // Dummy Data (later load from Controller)
  final List<Map<String, dynamic>> users = [
    {
      'name': 'Alice Johnson',
      'email': 'alice@example.com',
      'role': 'Student',
      'active': true,
    },
    {
      'name': 'Bob Smith',
      'email': 'bob@example.com',
      'role': 'Admin',
      'active': false,
    },
    {
      'name': 'Charlie Davis',
      'email': 'charlie@example.com',
      'role': 'Student',
      'active': true,
    },
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
          'User Management',
          style: TextStyle(
            color: Color(0XFF4B0082),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Container(
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
                        user['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        user['email'],
                        style: TextStyle(color: Color(0xFF8c8c8c)),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color:
                        user['role'] == 'Admin'
                            ? Color(0xFFFFD700)
                            : Color(0XFF4B0082),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    user['role'],
                    style: TextStyle(
                      color: Color(0XFF1A1A1A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Switch(
                  activeColor: Color(0XFF4B0082),
                  value: user['active'],
                  onChanged: (value) {
                    // TODO: Update user status
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

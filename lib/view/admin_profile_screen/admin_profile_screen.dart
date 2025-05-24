import 'package:flutter/material.dart';

class AdminProfileScreen extends StatelessWidget {
  static const routeName = '/admin-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Color(0XFF1A1A1A),
        elevation: 1,
        title: Text(
          'My Profile',
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
          children: [
            Container(
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
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0XFF4B0082),
                    child: Icon(
                      Icons.admin_panel_settings,
                      size: 50,
                      color: Color(0XFF1A1A1A),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Aurio Admin",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "admin@aurio.com",
                    style: TextStyle(color: Color(0xFF8c8c8c), fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD700),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Admin",
                      style: TextStyle(
                        color: Color(0XFF1A1A1A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: Edit profile logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF4B0082),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Color(0XFF1A1A1A), fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                // TODO: Logout logic
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false,
                );
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0XFF4B0082)),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Logout",
                style: TextStyle(color: Color(0XFF4B0082), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

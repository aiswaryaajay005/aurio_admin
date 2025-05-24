import 'package:aurio_admin/view/dashboard_screen/dashboard_Screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1A1A1A), // Light background
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(24),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Color(0XFF0C0C1A),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Admin Login",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF4B0082),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Please login to continue",
                  style: TextStyle(fontSize: 16, color: Color(0xFF8c8c8c)),
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF4B0082),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0XFF1A1A1A), fontSize: 18),
                  ),
                ),
                SizedBox(height: 12),
                TextButton(
                  onPressed: () {
                    // TODO: Forgot password screen
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFF8c8c8c)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

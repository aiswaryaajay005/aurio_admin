import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatelessWidget {
  static const routeName = '/student-details';

  @override
  Widget build(BuildContext context) {
    // Get the passed student data
    final Map<String, dynamic> student =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      backgroundColor: const Color(0xFFf5f6f5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Student Details',
          style: TextStyle(
            color: Color(0xFF87CEEB),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF87CEEB)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileCard(student),
            SizedBox(height: 24),
            _buildStatsGrid(),
            SizedBox(height: 32),
            Text(
              "Study Analytics",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF87CEEB),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 200,
              width: double.infinity,
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
              child: Center(
                child: Text(
                  "Chart Placeholder",
                  style: TextStyle(color: Color(0xFF8c8c8c)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(Map<String, dynamic> student) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5)),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xFF87CEEB),
            child: Icon(Icons.person, color: Colors.white, size: 30),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student['name'],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFD700),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1,
      children: [
        _buildStatCard('Streak', '15 Days', Icons.whatshot),
        _buildStatCard('Avg Study', '2.5h/day', Icons.access_time),
        _buildStatCard('Missed', '3 Sessions', Icons.close),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Color(0xFF87CEEB), size: 32),
          SizedBox(height: 12),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF87CEEB),
            ),
          ),
          SizedBox(height: 4),
          Text(title, style: TextStyle(color: Color(0xFF8c8c8c))),
        ],
      ),
    );
  }
}

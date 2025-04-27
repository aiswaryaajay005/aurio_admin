import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  static const routeName = '/reports';

  // Dummy Data (later fetched from Controller)
  final List<Map<String, String>> reports = [
    {'type': 'Weekly Report', 'date': 'April 20, 2025'},
    {'type': 'Monthly Report', 'date': 'April 01, 2025'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AurioDrawer(),

      backgroundColor: const Color(0xFFf5f6f5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Reports',
          style: TextStyle(
            color: Color(0xFF87CEEB),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF87CEEB),
        onPressed: () {
          // TODO: Generate Report Logic
        },
        label: Text("Generate Report"),
        icon: Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: reports.length,
        itemBuilder: (context, index) {
          final report = reports[index];
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
            child: Row(
              children: [
                Icon(Icons.description, size: 40, color: Color(0xFF87CEEB)),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        report['type']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        report['date']!,
                        style: TextStyle(color: Color(0xFF8c8c8c)),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // TODO: Download Report
                  },
                  icon: Icon(Icons.download, color: Color(0xFFFFD700)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

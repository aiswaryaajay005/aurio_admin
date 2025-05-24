import 'package:aurio_admin/widgets/aurio_drawer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AurioDrawer(),
      backgroundColor: const Color(0XFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Color(0XFF1A1A1A),
        elevation: 1,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Color(0XFF4B0082),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
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
                SwitchListTile(
                  title: Text(
                    "Dark Mode",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  value: isDarkMode,
                  activeColor: Color(0XFF4B0082),
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
                Divider(height: 1),
                ListTile(
                  title: Text(
                    "Language",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: DropdownButton<String>(
                    value: selectedLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLanguage = newValue!;
                      });
                    },
                    items:
                        ['English', 'Spanish', 'French']
                            .map(
                              (lang) => DropdownMenuItem<String>(
                                value: lang,
                                child: Text(lang),
                              ),
                            )
                            .toList(),
                  ),
                ),
                Divider(height: 1),
                ListTile(
                  title: Text(
                    "AI Flexibility (Coming Soon)",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8c8c8c),
                    ),
                  ),
                  trailing: Icon(Icons.lock_outline, color: Color(0xFF8c8c8c)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

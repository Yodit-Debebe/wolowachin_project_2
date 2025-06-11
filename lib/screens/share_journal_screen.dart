import 'package:flutter/material.dart';

class shareJournalScreen extends StatefulWidget {
  final VoidCallback? onBack;
  const shareJournalScreen({Key? key, this.onBack}) : super(key: key);

  @override
  State<shareJournalScreen> createState() => _shareJournalScreenState();

  void navigate(String s) {}
}
class _shareJournalScreenState extends State<shareJournalScreen> {
  TextEditingController emailController = TextEditingController(text: "edilawit@gmail.com");
  String selectedPermission = "Can view";
  List<String> permissions = ["Can view", "Can edit"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
    appBar: AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () {
    Navigator.pushNamed(context, '/sharedJournalPage');
    },
    ),
    title: const Text(
    "Wilowachn",
    style: TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              "Share Journal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Share with",
              style: TextStyle(
                fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Color(0xFF6B6767),
    ),
    ),
    const SizedBox(height: 8),
    TextField(
    controller: emailController,
    decoration: InputDecoration(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    ),
    ),
    const SizedBox(height: 24),
    const Text(
    "Permissions",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.black,
    ),
    ),
    const SizedBox(height: 8),
    Container(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(8),
    ),
    child: DropdownButton<String>(
    isExpanded: true,
    value: selectedPermission,
    underline: const SizedBox(),
    icon: const Icon(Icons.arrow_drop_down),
    onChanged: (String? newValue) {
    setState(() {
    selectedPermission = newValue!;
    });
    },
    items: permissions.map((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value, style: const TextStyle(color: Colors.black)),
    );
    }).toList(),
    ),
    ),
    const SizedBox(height: 36),
    SizedBox(
    width: double.infinity,
    height: 56,
    child: ElevatedButton(
    onPressed: () {
    Navigator.pushNamed(context, '/sharedJournalPage');
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF4A11F9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    child: const Text(
    "Share",
    style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xE0E7E1E1),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Edit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Table',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'Share',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/welcome');
              break;
            case 1:
              Navigator.pushNamed(context, '/editor');
              break;
            case 2:
              Navigator.pushNamed(context, '/myjournals');
              break;
            case 3:
              Navigator.pushNamed(context, '/sharing');
              break;
          }
        },
      ),
    );
  }
}



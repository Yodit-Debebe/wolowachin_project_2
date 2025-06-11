import 'package:flutter/material.dart';

  class MyJournals extends StatelessWidget {
  final Function(String) navigate;

  const MyJournals({Key? key, required this.navigate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFF5F5F5),
  body: Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
  children: [
  Row(
  children: [
  IconButton(
  icon: const Icon(Icons.arrow_back, color: Colors.black),
  onPressed: () {
  Navigator.pushNamed(context, '/welcome');
  },
  ),
  const Text(
  'Wilowachn',
  style: TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  ),
  ),
  ],
  ),

  const SizedBox(height: 16),


  SizedBox(
  width: double.infinity,
  child: ElevatedButton(
  onPressed: () {
  Navigator.pushNamed(context, '/editor');
  },
  style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  ),
  child: Text(
  '+   New Journal',
  style: const TextStyle(color: Colors.white),
  ),
  ),
  ),

  const SizedBox(height: 16),
  const Align(
  alignment: Alignment.centerLeft,
  child: Padding(
  padding: EdgeInsets.only(left: 8.0),
  child: Text(
  'My Journals',
  style: TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  ),
  ),
  ),
  ),

  const SizedBox(height: 15),
  Expanded(
  child: ListView(
  children: const [
  JournalItem(
  title: "Weekend Trip",
  date: "April 22, 2024",
  description: "Had an amazing weekend....",
  ),
  JournalItem(
  title: "Morning Reflection",
  date: "April 20, 2024",
  description: "This morning I spent some time thinking....",
  ),
  JournalItem(
  title: "Book Notes",
  date: "April 19, 2024",
  description: "Thoughts on the novel I’ve been reading....",
  ),
  ],
  ),
  ),
  ],
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
class JournalItem extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  const JournalItem({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 4),
            Text(date, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            Text(description,
                style: const TextStyle(color: Colors.black, fontSize: 14)),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.bottomRight,
              child: Text('✎'),
            ),
          ],
        ),
      ),
    );
  }
}


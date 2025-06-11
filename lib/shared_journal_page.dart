import 'package:flutter/material.dart';

class SharedJournalPage extends StatelessWidget {
  const SharedJournalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0, bottom: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Text(
                      "Wilowachn",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 15.0),
                child: Text(
                  "Shared With Me",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: const [
                    SharedItem(
                      title: "Daily Thoughts",
                      date: "April 22, 2024",
                      description: "Had an amazing weekend....",
                    ),
                    SharedItem(
                      title: "Travel Journal",
                      date: "April 20, 2024",
                      description: "This morning I spent some time thinking....",
                    ),
                    SharedItem(
                      title: "Research Idea",
                      date: "April 19, 2024",
                      description: "Thoughts on the novel I’ve been reading....",
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
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
          ),
        ],
      ),
    );
  }
}
class SharedItem extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  const SharedItem({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey.shade300, width: 1.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 32.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

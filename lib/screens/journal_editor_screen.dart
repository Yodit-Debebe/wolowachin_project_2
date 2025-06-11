import 'package:flutter/material.dart';

class JournalEditorScreen extends StatefulWidget {
final VoidCallback onSave;
final VoidCallback onDelete;
final VoidCallback onBack;


const JournalEditorScreen({
Key? key,
required this.onSave,
required this.onDelete,
required this.onBack,
}) : super(key: key);

@override
State<JournalEditorScreen> createState() => _JournalEditorScreenState();
}

class _JournalEditorScreenState extends State<JournalEditorScreen> {
late final TextEditingController _titleController;
late final TextEditingController _contentController;

final Color bgColor = const Color(0xFFF5F5F5);
final Color purple = const Color(0xFF4000F4);

@override
void initState() {
super.initState();
_titleController = TextEditingController();
_contentController = TextEditingController();
}

@override
void dispose() {
_titleController.dispose();
_contentController.dispose();
super.dispose();
}
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: bgColor,
body: SafeArea(
child: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(24.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
IconButton(
onPressed: widget.onBack,
icon: const Icon(Icons.arrow_back),
tooltip: "Back",
),
const SizedBox(width: 8.0),
const Text(
'Wilowachin',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 32.0,
color: Colors.black,
),
),
],
),
const SizedBox(height: 16.0),
const Align(
alignment: Alignment.center,
child: Text(
'Create Journal',
style: TextStyle(
fontWeight: FontWeight.w900,
fontSize: 24.0,
),
),
),
const SizedBox(height: 32.0),
const Text(
'Title',
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Color(0xFF555052)),
),
const SizedBox(height: 4.0),
TextFormField(
controller: _titleController,
maxLines: 1,
decoration: const InputDecoration(
labelText: 'title',
border: OutlineInputBorder(),
),
),
const SizedBox(height: 20.0),
const Text(
'Content',
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Color(0xFF555052)),
),
const SizedBox(height: 4.0),
TextFormField(
controller: _contentController,
maxLines: 1,
decoration: const InputDecoration(
labelText: 'content',
border: OutlineInputBorder(),
),
),
const SizedBox(height: 36.0),
SizedBox(
width: double.infinity,
height: 56.0,
child: ElevatedButton(
onPressed: widget.onSave,
style: ElevatedButton.styleFrom(
backgroundColor: purple,
foregroundColor: Colors.white,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
elevation: 0,
),
child: const Text('Save', style: TextStyle(fontSize: 18.0)),
),
),
const SizedBox(height: 16.0),
SizedBox(
width: double.infinity,
height: 50.0,
child: OutlinedButton(
onPressed: widget.onDelete,
style: OutlinedButton.styleFrom(
backgroundColor: Colors.white,
foregroundColor: Colors.black,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
side: const BorderSide(color: Color(0xFFDDDDDD)),
),
child: const Text('Delete', style: TextStyle(fontSize: 18.0)),
),
),
],
),
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


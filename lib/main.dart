import 'package:flutter/material.dart';
import 'package:wolowachin_project_2/screens/share_journal_screen.dart';
import 'package:wolowachin_project_2/screens/shared_journal_page.dart';
import 'package:wolowachin_project_2/screens/signup_screen.dart';
import 'package:wolowachin_project_2/screens/welcome_screen.dart';
import 'screens/first_screen.dart';
import 'screens/journal_editor_screen.dart';
import 'screens/login_screen.dart';
import 'screens/myjournal_screen.dart';


void main() {
  runApp(const MobileApp());
}

class MobileApp extends StatelessWidget {
  const MobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/firstScreen',
      routes: {
        '/firstScreen': (context) => FirstScreen(
          onLoginClick: () => Navigator.pushNamed(context, '/loginScreen'),
          onSignUpClick: () => Navigator.pushNamed(context, '/signUpScreen'),
        ),
        '/loginScreen': (context) => LoginScreen(
          onForgotPasswordClick: () {},
          onLoginClick: () => Navigator.pushNamed(context, '/welcome'),
        ),
        '/signUpScreen': (context) => SignUpScreen(
          onSignUpClick: () => Navigator.pushNamed(context, '/loginScreen'),
        ),
        '/welcome': (context) => const WelcomeScreen(),
        '/myjournals': (context) => MyJournals(navigate: (String ) {  },),
        '/sharedJournalPage': (context) => const SharedJournalPage(),
        '/editor': (context) => JournalEditorScreen(
          onSave: () => Navigator.pushNamed(context, '/myjournals'),
          onDelete: () {},
          onBack: () => Navigator.pushNamed(context, '/myjournals'),
        ),
        '/sharing': (context) => shareJournalScreen(),
      },
    );
  }
}

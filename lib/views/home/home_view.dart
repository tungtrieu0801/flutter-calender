import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

String getGreeting() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour >= 5 && hour < 12) {
    return 'Chào buổi sáng!';
  } else if (hour >= 12 && hour < 18) {
    return 'Chào buổi chiều!';
  } else {
    return 'Chào buổi tối!';
  }
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text(
            getGreeting(),
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package for formatting dates

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Map<String, String>> tasks = [
    {
      "title": "Task 1",
      "description": "Your personal task management and planning solution for planning your day.",
    },
    {
      "title": "Task 2",
      "description": "Your personal task management and planning solution for planning your week.",
    },
    {
      "title": "Task 3",
      "description": "Your personal task management and planning solution for planning your month.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Board",
          style: TextStyle(fontWeight: FontWeight.w700),
        ), // Set the title of the AppBar
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          var task = tasks[index];
          String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
          return Card(
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task["title"]!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 8),
                  Text(
                    task["description"]!,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      formattedDate,
                      style: TextStyle(fontSize: 12, fontStyle: FontStyle.normal),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Assuming you want to add more tasks dynamically
            int nextTaskNum = tasks.length + 1;
            tasks.add({
              "title": "Task $nextTaskNum",
              "description": "Description for Task $nextTaskNum.",
            });
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

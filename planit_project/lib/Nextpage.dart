import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Task Board",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              color: Color(0xFFF5F8FB),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task One",
                          style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Your Personal task management and planning solution for planning your day, week & months",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text(
                        DateFormat('h:mm a d MMMM, y').format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              color: Color(0xFFF5F8FB),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Two",
                          style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Your Personal task management and planning solution for planning your day, week & months",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text(
                        DateFormat('h:mm a d MMMM, y').format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              color: Color(0xFFF5F8FB),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Three",
                          style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Your Personal task management and planning solution for planning your day, week & months",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text(
                        DateFormat('h:mm a d MMMM, y').format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('button pressed');
          },
          backgroundColor: Colors.black,
          shape: CircleBorder(),
          child: Icon(Icons.add, color: Colors.white, size: 35)
      ),
    );
  }
}
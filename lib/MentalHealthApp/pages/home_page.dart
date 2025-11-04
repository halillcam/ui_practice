import 'package:flutter/material.dart';
import 'package:ui_practice/MentalHealthApp/utils/emoticon_face.dart';
import 'package:ui_practice/MentalHealthApp/utils/exercises_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: "Search",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Jared !",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text("4 Nov, 2025", style: TextStyle(color: Colors.blue[200])),
                        ],
                      ),

                      // Notifications
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text("Search", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // how do you feel ?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 25),

                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      EmoticonFace(emoteicon: "😫", iconText: "Bad"),
                      // good
                      EmoticonFace(emoteicon: "😊", iconText: "Good"),
                      // well
                      EmoticonFace(emoteicon: "😄", iconText: "Well"),
                      // excellent
                      EmoticonFace(emoteicon: "😂", iconText: "Excellent"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ExercisesCard(
                            title: 'Reading Speed',
                            subtitle: '5 Exercises',
                            leadingIcon: Icon(Icons.favorite, color: Colors.red),
                            trailingIcon: Icon(Icons.book_outlined),
                          ),
                          ExercisesCard(
                            title: 'Speaking Skills',
                            subtitle: '15 Exercises',
                            leadingIcon: Icon(Icons.favorite, color: Colors.amber),
                            trailingIcon: Icon(Icons.language),
                          ),
                          ExercisesCard(
                            title: 'Push-up',
                            subtitle: '30 Exercises',
                            leadingIcon: Icon(Icons.favorite, color: Colors.orange),
                            trailingIcon: Icon(Icons.h_plus_mobiledata_outlined),
                          ),
                          ExercisesCard(
                            title: 'Speaking Skills',
                            subtitle: '15 Exercises',
                            leadingIcon: Icon(Icons.favorite, color: Colors.red),
                            trailingIcon: Icon(Icons.language),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

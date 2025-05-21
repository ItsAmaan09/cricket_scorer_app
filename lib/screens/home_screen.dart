import 'package:cricket_scorer/screens/create_match_screen.dart';
import 'package:cricket_scorer/screens/match_list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cricket Scorer', style: TextStyle(color: Colors.white)),
        centerTitle: !false,
        backgroundColor: Color.fromARGB(255, 142, 56, 116),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.sports_cricket, color: Colors.white,),
              label: Text('Create New Match', style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CreateMatchScreen()),
                );
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50), backgroundColor: const Color.fromARGB(255, 24, 46, 243)),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.history, color: Colors.black,),
              label: Text('Previous Matches', style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MatchesListScreen()),
                );
              },
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
          ],
        ),
      ),
    );
  }
}

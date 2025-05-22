import 'package:cricket_scorer/screens/select_teams_screen.dart';
import 'package:flutter/material.dart';
import 'add_players_screen.dart';

class CreateMatchScreen extends StatefulWidget {
  @override
  _CreateMatchScreenState createState() => _CreateMatchScreenState();
}

class _CreateMatchScreenState extends State<CreateMatchScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController teamAController = TextEditingController();
  TextEditingController teamBController = TextEditingController();
  int selectedOvers = 5;

  List<int> oversList = [5, 10, 15, 20];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Match'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: teamAController,
                decoration: InputDecoration(labelText: 'Team A Name'),
                validator: (value) => value!.isEmpty ? 'Enter team name' : null,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: teamBController,
                decoration: InputDecoration(labelText: 'Team B Name'),
                validator: (value) => value!.isEmpty ? 'Enter team name' : null,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Select Overs:",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 20),
                  DropdownButton<int>(
                    value: selectedOvers,
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedOvers = newValue!;
                      });
                    },
                    items: oversList.map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text("$value Overs"),
                      );
                    }).toList(),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => 
                        SelectTeamScreen(
                          teamAName: teamAController.text,
                          teamBName: teamBController.text,
                          overs: selectedOvers,
                        ),
                      )
                    );
                  }
                },
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

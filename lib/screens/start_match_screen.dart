import 'package:flutter/material.dart';
// import 'match_screen.dart'; // (next step: actual scoring screen)

class StartMatchScreen extends StatefulWidget {
  final String teamAName;
  final String teamBName;
  final int overs;
  final List<String> teamAPlayers;
  final List<String> teamBPlayers;

  const StartMatchScreen({
    required this.teamAName,
    required this.teamBName,
    required this.overs,
    required this.teamAPlayers,
    required this.teamBPlayers,
  });

  @override
  State<StartMatchScreen> createState() => _StartMatchScreenState();
}

class _StartMatchScreenState extends State<StartMatchScreen> {
  String? tossWinner;
  String? decision;

  @override
  Widget build(BuildContext context) {
    List<String> teams = [widget.teamAName, widget.teamBName];

    return Scaffold(
      appBar: AppBar(
        title: Text('Start Match'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Toss Winner', style: TextStyle(fontSize: 16)),
            DropdownButtonFormField<String>(
              value: tossWinner,
              hint: Text('Select Team'),
              items: teams
                  .map((team) => DropdownMenuItem(
                        child: Text(team),
                        value: team,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  tossWinner = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Decision', style: TextStyle(fontSize: 16)),
            DropdownButtonFormField<String>(
              value: decision,
              hint: Text('Select Decision'),
              items: ['Batting', 'Bowling']
                  .map((d) => DropdownMenuItem(
                        child: Text(d),
                        value: d,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  decision = value;
                });
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if (tossWinner != null && decision != null) {
                  // You can pass this info to the match scoring screen
                  // Navigator.push(...);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Match Started (UI Next Step)')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please select toss and decision')),
                  );
                }
              },
              child: Text('Start Match'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

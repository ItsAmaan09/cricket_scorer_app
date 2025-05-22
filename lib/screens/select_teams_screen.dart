import 'package:flutter/material.dart';
import 'player_list_screen.dart';

class SelectTeamScreen extends StatelessWidget {
  final String teamAName;
  final String teamBName;
  final int overs;

  const SelectTeamScreen({
    required this.teamAName,
    required this.teamBName,
    required this.overs,
  });

  @override
  Widget build(BuildContext context) {
    List<String> teams = [teamAName, teamBName];

    return Scaffold(
      appBar: AppBar(title: Text('Select Team to Add Players')),
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(teams[index]),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PlayerListScreen(
                      teamName: teams[index],
                      overs: overs,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

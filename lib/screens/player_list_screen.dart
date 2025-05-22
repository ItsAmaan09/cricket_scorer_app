import 'package:flutter/material.dart';

class PlayerListScreen extends StatefulWidget {
  final String teamName;
  final int overs;

  const PlayerListScreen({
    required this.teamName,
    required this.overs,
  });

  @override
  _PlayerListScreenState createState() => _PlayerListScreenState();
}

class _PlayerListScreenState extends State<PlayerListScreen> {
  List<String> players = [];

  void _addPlayer() {
    if (players.length >= 11) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Maximum 11 players allowed')),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (_) {
        TextEditingController _controller = TextEditingController();
        return AlertDialog(
          title: Text('Add Player'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: 'Enter player name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  setState(() {
                    players.add(_controller.text);
                  });
                  Navigator.pop(context); // Close dialog
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.teamName} Players'),
      ),
      body: players.isEmpty
          ? Center(child: Text('No players added yet'))
          : ListView.builder(
              itemCount: players.length,
              itemBuilder: (_, index) => ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(players[index]),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPlayer,
        child: Icon(Icons.add),
      ),
    );
  }
}

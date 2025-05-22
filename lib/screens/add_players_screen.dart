import 'package:cricket_scorer/screens/start_match_screen.dart';
import 'package:flutter/material.dart';
// import 'start_match_screen.dart';

class AddPlayersScreen extends StatefulWidget {
  final String teamAName;
  final String teamBName;
  final int overs;

  const AddPlayersScreen({
    required this.teamAName,
    required this.teamBName,
    required this.overs,
  });

  @override
  _AddPlayersScreenState createState() => _AddPlayersScreenState();
}

class _AddPlayersScreenState extends State<AddPlayersScreen> {
  final _formKey = GlobalKey<FormState>();
  List<TextEditingController> teamAControllers =
      List.generate(11, (_) => TextEditingController());
  List<TextEditingController> teamBControllers =
      List.generate(11, (_) => TextEditingController());

  @override
  void dispose() {
    for (var c in [...teamAControllers, ...teamBControllers]) {
      c.dispose();
    }
    super.dispose();
  }

  Widget _buildPlayerInputList(String teamName, List<TextEditingController> controllers) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(teamName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ...List.generate(controllers.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: TextFormField(
              controller: controllers[index],
              decoration: InputDecoration(labelText: 'Player ${index + 1}'),
              validator: (value) => value!.isEmpty ? 'Enter player name' : null,
            ),
          );
        }),
        SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Players')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPlayerInputList(widget.teamAName, teamAControllers),
                _buildPlayerInputList(widget.teamBName, teamBControllers),
                ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                      // Optional: Pass player names forward
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => StartMatchScreen(
                            teamAName: widget.teamAName,
                            teamBName: widget.teamBName,
                            overs: widget.overs,
                            teamAPlayers: teamAControllers.map((e) => e.text).toList(),
                            teamBPlayers: teamBControllers.map((e) => e.text).toList(),
                          ),
                        ),
                      );
                    // }
                  },
                  child: Text('Start Match'),
                  style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                )
              ],
            ),
          ),
        ),
        
      ),
      
    );
  }
}

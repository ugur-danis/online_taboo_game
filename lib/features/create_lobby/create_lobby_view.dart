import 'package:flutter/material.dart';

class CreateLobbyView extends StatelessWidget {
  const CreateLobbyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Lobby'),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(),
          ],
        ),
      ),
    );
  }
}

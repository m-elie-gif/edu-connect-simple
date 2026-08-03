import 'package:flutter/material.dart';

class CommunicationScreen extends StatelessWidget {
  const CommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green[100],
              child: Text('${index + 1}'),
            ),
            title: Text('Teacher ${index + 1}'),
            subtitle: const Text('Last message: Hello!'),
            trailing: const Text('12:00 PM'),
            onTap: () {},
          );
        },
      ),
    );
  }
}

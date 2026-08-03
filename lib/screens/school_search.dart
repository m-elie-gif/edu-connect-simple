import 'package:flutter/material.dart';

class SchoolSearchScreen extends StatelessWidget {
  const SchoolSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Find Schools')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: const Icon(Icons.school, color: Colors.green),
              title: Text('School ${index + 1}'),
              subtitle: const Text('Kampala, Uganda'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SchoolDetailScreen(),
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

class SchoolDetailScreen extends StatelessWidget {
  const SchoolDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('School Details')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kampala High School', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Location: Kampala, Uganda'),
            Text('Students: 1,200'),
            Text('Teachers: 30'),
            SizedBox(height: 16),
            Text('About:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('A leading secondary school in Uganda.'),
          ],
        ),
      ),
    );
  }
}

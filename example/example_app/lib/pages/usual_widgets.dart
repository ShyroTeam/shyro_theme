import 'package:flutter/material.dart';

class UsualWidgetsTestPage extends StatelessWidget {
  const UsualWidgetsTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            trailing: const SizedBox(
                height: double.infinity, child: Icon(Icons.delete_outline)),
            title: const Text('Title'),
            subtitle: const Text('Subtitle'),
            onTap: () {},
          ),
          const Card(
            child: SizedBox.square(
              dimension: 200,
              child: Center(child: Text('Card')),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonsTestPage extends StatelessWidget {
  const ButtonsTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 12.0,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            child: const Icon(Icons.delete_outline),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FloatingActionButton(
              isExtended: true,
              tooltip: 'Test Add button',
              onPressed: () {},
              child: const Icon(Icons.add_outlined),
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Row(
              children: const [
                Icon(Icons.edit_outlined),
                Text(' EDIT'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

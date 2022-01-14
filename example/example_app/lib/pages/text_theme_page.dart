import 'package:flutter/material.dart';

class TextThemeTestPage extends StatelessWidget {
  const TextThemeTestPage({Key? key}) : super(key: key);
  final String lorem = 'Lorem ipsum dolor sit amet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'H6 - $lorem',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Divider(),
          Text(
            'H5 - $lorem',
            style: Theme.of(context).textTheme.headline5,
          ),
          const Divider(),
          Text(
            'H4 - $lorem',
            style: Theme.of(context).textTheme.headline4,
          ),
          const Divider(),
          Text(
            'H3 - $lorem',
            style: Theme.of(context).textTheme.headline3,
          ),
          const Divider(),
          Text(
            'H2 - $lorem',
            style: Theme.of(context).textTheme.headline2,
          ),
          const Divider(),
          Text(
            'H1 - $lorem',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Divider(),
        ],
      ),
    );
  }
}

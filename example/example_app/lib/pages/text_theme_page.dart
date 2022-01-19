import 'package:flutter/material.dart';

class TextThemeTestPage extends StatelessWidget {
  const TextThemeTestPage({Key? key}) : super(key: key);
  final String lorem = 'Lorem';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'H1 - $lorem',
                style: Theme.of(context).textTheme.headline1,
              ),
              const Divider(),
              Text(
                'H2 - $lorem',
                style: Theme.of(context).textTheme.headline2,
              ),
              const Divider(),
              Text(
                'H3 - $lorem',
                style: Theme.of(context).textTheme.headline3,
              ),
              const Divider(),
              Text(
                'H4 - $lorem',
                style: Theme.of(context).textTheme.headline4,
              ),
              const Divider(),
              Text(
                'H5 - $lorem',
                style: Theme.of(context).textTheme.headline5,
              ),
              const Divider(),
              Text(
                'H6 - $lorem',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Divider(),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed d'
                'o eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                'Ut enim ad minim veniam, quis nostrud exercitation ullamco lab'
                'oris nisi ut aliquip ex ea commodo consequat. Duis aute irure '
                'dolor in reprehenderit in voluptate velit esse cillum dolore e'
                'u fugiat nulla pariatur. Excepteur sint occaecat cupidatat non'
                ' proident, sunt in culpa qui officia deserunt mollit anim id e'
                'st laborum.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

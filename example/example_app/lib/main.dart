import 'package:flutter/material.dart';
import 'package:shyro_theme/shyro_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShyroThemes Demo',
      theme: VPECThemes.lightTheme(),
      darkTheme: VPECThemes.darkTheme(),
      home: const MyHomePage(title: 'ShyroThemes Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bbarIndex = 0;
  bool _extendFAB = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            tooltip: 'Test Add button',
            onPressed: () {},
            icon: const Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        tooltip: 'Test Add button',
        onPressed: () {
          setState(() {
            _extendFAB = !_extendFAB;
          });
        },
        child: const Icon(Icons.add_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _bbarIndex,
        onTap: (index) {
          setState(() {
            _bbarIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.ten_k_outlined),
              activeIcon: Icon(Icons.ten_k),
              label: 'Item 0'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              activeIcon: Icon(Icons.notifications),
              label: 'Item 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule_outlined),
              activeIcon: Icon(Icons.watch_later),
              label: 'Item 2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              activeIcon: Icon(Icons.dashboard),
              label: 'Item 3'),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            activeIcon: Icon(Icons.menu),
            label: 'Item 4',
          ),
        ],
      ),
    );
  }
}

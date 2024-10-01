import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title section
    Widget titleSection = Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'Oeschinen Lake',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                const Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41')
          ],
        ));

    // Button section
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Text section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Welcome to the untouched beauty of Oeschinensee in the UNESCO World Heritage Site - a unique natural jewel. Immerse yourself in the idyllic landscape, surrounded by majestic mountains. Nestled in a wild and romantic rocky basin in the Blüemlisalp massif, the Oeschinensee is considered the most beautiful mountain lake in Switzerland.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'flutter layout demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dani Daneswara | 362358302048'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'assets/images/lake.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
  }
}

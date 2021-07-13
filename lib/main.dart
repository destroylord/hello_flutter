import 'package:flutter/material.dart';

// Column _buildButtonColumn(Color color, IconData icon, String label) {
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Icon(icon, color: color),
//       Container(
//         margin: const EdgeInsets.only(top: 8),
//         child: Text(
//           label,
//           style: TextStyle(
//               fontSize: 12, fontWeight: FontWeight.w400, color: color),
//         ),
//       )
//     ],
//   );
// }

// Color color = Theme.of(context).primaryColor;

// Widget buttonSection = Container(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       _buildButtonColumn(color, Icons.call, 'CALL'),
//       _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//       _buildButtonColumn(color, Icons.share, 'SHARE'),
//     ],
//   ),
// );

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make',
      softWrap: true),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Lake Campaige',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500])),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter layout demo application')),
      body: Column(
        children: [
          Image.asset(
            'images/cake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          textSection
        ],
      ),
    );
  }
}


void main() => runApp(MaterialApp(
      title: "Flutter layout demo",
      home: Home(),
    ));

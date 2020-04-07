import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFBC02D),
        leading:
            Icon(Icons.arrow_back), // remove this when u add navigation #####
        title: Text('Book Details'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 5,
            child: Image.asset('images/الطنطورية.png',),
          ),
          Flexible(
            flex: 2,
            child: buildListTile('Book Name', 'الطنطورية', Icons.title),
          ),
          Flexible(
            flex: 2,
            child: buildListTile('Owner Name', 'Someone', Icons.person),
          ),
          Flexible(
            flex: 2,
            child: buildListTile('Author Name', 'رضوى عاشور', Icons.edit),
          ),
          Flexible(
            flex: 2,
            child: buildListTile('Category', 'Novel', Icons.library_books),
          ),
          Flexible(
            flex: 3,
            child: buildListTile('Description', '.................' ,Icons.details),
          ),
        ],
      ),
    );
  }
}

Widget buildListTile(String title, String subtitle, IconData leading) {
  return ListTile(
    leading: Icon(leading),
    title: Text(
      '$title',
    ),
    subtitle: Text(
      '$subtitle',
    ),
  );
}

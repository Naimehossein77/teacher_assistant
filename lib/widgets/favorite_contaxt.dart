import 'package:flutter/material.dart';

class favoriteContacts extends StatelessWidget {
  const favoriteContacts({Key key}) : super(key: key);

  static const List<String> favorites = [
    'naim',
    'jubair',
    'ishra',
    'nipa',
    'samia',
    'zarzia'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  onPressed: () {},
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(child: Text(favorites[index])),
              );
            },
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Drawerrr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.23,
              width: width,
              color: Color.fromRGBO(13, 37, 74, 1.0),
            ),
            SizedBox(height: 16),
            buildTile(context, 'Home'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 0.3,
                color: Colors.black,
              ),
            ),
            buildTile(context, 'Videos'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 0.3,
                color: Colors.black,
              ),
            ),
            buildTile(context, 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget buildTile(BuildContext context, String title) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        switch (title) {
          case 'Home':
            Navigator.pushNamed(context, '/');
            break;
          case 'Videos':
            Navigator.pushNamed(context, '/videos');
            break;
          case 'Profile':
            Navigator.pushNamed(context, '/profile');
            break;
          default:
        }
      },
      child: Container(
        width: width,
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'drawerwidget.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(13, 37, 74, 1),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: Drawerrr(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 10),
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      image: NetworkImage('https://m.economictimes.com/thumb/msid-79457702,width-1200,height-900,resizemode-4,imgsize-264098/modi_address.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    border: Border.all(
                      color: Colors.orangeAccent,
                      width: 2.0,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Dinesh yaduvanshi',
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                TextButton(
                  onPressed: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.orangeAccent),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Colors.white,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Location',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Pincode',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'xxxxxx',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'dd-mm-yy',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Male',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Whatsapp',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '+91 - xxxxxxxxxx',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'xxxxxxxxxxxxxxxx@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

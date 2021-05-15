import 'package:flutter/material.dart';
import 'package:news/pages/drawerwidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(13, 37, 74,1),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: Drawerrr(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tags(context),
                tags(context),
                tags(context),
                tags(context),
                tags(context),
                tags(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tags(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://m.economictimes.com/thumb/msid-79457702,width-1200,height-900,resizemode-4,imgsize-264098/modi_address.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.width/4,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  height: 35,
                  child: Text(
                      "This is Heading of the realte new ws this is and go on.",
                      style: TextStyle(fontWeight: FontWeight.w900),
                      overflow: TextOverflow.fade),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  height: 35,
                  child: Text(
                      "This is Heading of the realte new ws this is and go on.",
                      overflow: TextOverflow.fade),
                ),
                Container(
                  width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 18,
                      ),
                      Text(
                        '03-03-2021',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          height: 18,
                          width: 80,
                          child: Text(
                            'Sports',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          color: Colors.orange.shade800,
                        ),
                      ),
                      Icon(Icons.bookmark_border_outlined),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news/pages/drawerwidget.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

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
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width,
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Videos',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Stack(
                  children: [
                    Container(
                      width: width,
                      child: Image.network(
                        'https://images.livemint.com/img/2020/11/17/600x338/20201117141L_1605628936754_1605628945120.jpg',
                        width: width,
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Center(
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'This is a heading of the related new ws afgh afju ghyj.',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: width,
                        child: Text(
                          'Date and Time here',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: width,
                        child: Text(
                          'Wikipedia is a compendium of the worlds knowledge. If you know what you are looking for, type it into Wikipedias search box. If, however, you need a birds eye view of what Wikipedia has to offer, see its main contents pages below, which in turn list more specific pages.',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        elevation: 10,
                        child: Container(
                          width: width,
                          height: 40,
                          color: Colors.grey[100],
                          child: Center(
                            child: Text(
                              'Information',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      tags(context),
                      tags(context),
                      tags(context),
                      tags(context),
                      tags(context),
                      tags(context),
                    ],
                  ),
                )
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
        width:MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage('https://m.economictimes.com/thumb/msid-79457702,width-1200,height-900,resizemode-4,imgsize-264098/modi_address.jpg',
                  ),
                  fit: BoxFit.cover,
                )
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

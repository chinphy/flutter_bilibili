import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFragmentState();
  }
}

class _HomeFragmentState extends State<HomeFragment> {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: <Widget>[
              Icon(Icons.menu, color: Colors.white),
              ClipOval(
                child: Image.network(
                    'https://avatar.csdn.net/D/9/6/3_u011272795.jpg',
                    width: 30.0,
                    height: 30.0,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 4.0),
                margin: EdgeInsets.only(left: 13.0),
                width: 120.0,
                height: 30.0,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Container(
                child: Icon(
                  Icons.videogame_asset,
                  color: Colors.white,
                ),
                width: 38.0,
                height: 41.0,
                margin: EdgeInsets.only(left: 20.0),
              ),
              Container(
                child: Icon(
                  Icons.cloud_download,
                  color: Colors.white,
                ),
                width: 38.0,
                height: 41.0,
                margin: EdgeInsets.only(left: 20.0),
              ),
              Container(
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                width: 38.0,
                height: 41.0,
                margin: EdgeInsets.only(left: 20.0),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 13),
              alignment: Alignment.center,
              width: MediaQueryData.fromWindow(ui.window).size.width,
              color: Colors.white,
              height: 50.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('直播', textAlign: TextAlign.center),
                      Container(
                        height: 1,
                        width: 30,
                        color: Colors.redAccent,
                        margin: EdgeInsets.only(top: 13),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('推荐'),
                      Container(
                        height: 1,
                        width: 30,
                        color: Colors.redAccent,
                        margin: EdgeInsets.only(top: 13),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('追番'),
                      Container(
                        height: 1,
                        width: 30,
                        color: Colors.redAccent,
                        margin: EdgeInsets.only(top: 13),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('国家宝藏'),
                      Container(
                        height: 1,
                        width: 30,
                        color: Colors.redAccent,
                        margin: EdgeInsets.only(top: 13),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('故事王2'),
                      Container(
                        height: 1,
                        width: 30,
                        color: Colors.redAccent,
                        margin: EdgeInsets.only(top: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                    "https://i0.hdslb.com/bfs/archive/2fb71163a38f9299c04d3aafa4f24d3626ed9f03.png"),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://i0.hdslb.com/bfs/live/1a7364c1370558d6c098fe2dc9e0d6eeb5389a03.png',
                                width: 110.0,
                                height: 60.0,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text('英雄联盟'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://i0.hdslb.com/bfs/live/1a7364c1370558d6c098fe2dc9e0d6eeb5389a03.png',
                                width: 110.0,
                                height: 60.0,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text('英雄联盟'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://i0.hdslb.com/bfs/live/1a7364c1370558d6c098fe2dc9e0d6eeb5389a03.png',
                                width: 120.0,
                                height: 60.0,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text('英雄联盟'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

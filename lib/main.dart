import 'package:flutter/material.dart';

import 'buying_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(100, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black26,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          centerTitle: false,
          leading: Icon(Icons.shopping_bag),
          title: const Text(
            'ペットアパレルアプリ',
          ),
          actions: <Widget>[
            SizedBox(
              width: 40,
              child: TextButton(
                child: Icon(Icons.search),
                onPressed: () {
                  //やること
                },
              ),
            ),
            SizedBox(
              width: 40,
              child: TextButton(
                child: Icon(Icons.menu),
                onPressed: () {
                  //やること
                },
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4gmdqbVFqJunkwc0iphI7I9oWIlpdABh0aw&usqp=CAU'
                    ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                            'ペットアパレル'
                        ),
                        TextButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.app_registration,
                                color: Colors.red,
                              ),
                              Text('登録'),
                            ],
                          ),
                          onPressed: () {
                            // todo
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(100, (index) {
                  return ListTile(
                  onTap: ()async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuyingPage(),
                      ),
                    );
                  },
                    contentPadding: EdgeInsets.all(5),
                    leading: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxAtRfo5qFtaAxn-KMU3L69Q_a-EkBumLWeA&usqp=CAU'
                    ),
                    title: Column(
                      children: <Widget>[
                        Text(
                            'アパレルサンプル',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                            )
                        ),
                        Row(
                          children: <Widget>[
                            Text('100いいね'),
                            Text('20人が購入'),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.fmd_good),
                  );
                },
              ),
              ),
              ),
        ],
          ),
        ),
      ),
    );
  }
}
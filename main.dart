import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network(
            'https://picsum.photos/250?image=9',
          ),
          RaisedButton(
            child: Text('Voir menu'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Domaines()),
              );
            },
          ),
          RaisedButton(
            child: Text('Besoin d\'aide'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Aide()),
              );
            },
          ),
          RaisedButton(
            child: Text('Nous contacter'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact()),
              );
            },
          ),
        ],
      )),
    );
  }
}

class Domaines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Domaines"),
      ),
      body: Center(
          child: GridView.count(
        padding: EdgeInsets.all(8.0),
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <Widget>[
          Container(
            child: RaisedButton(
              child: Text('Education'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('Santé'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
          Container(
              child: Container(
            child: RaisedButton(
              child: Text('Instistutions Publiques'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SousDomaines()),
                );
              },
            ),
          ),),
        ],
      )),
    );
  }
}

class Aide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aide'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Aide'),
          onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
          },
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
          },
        ),
      ),
    );
  }
}

class SousDomaines extends StatefulWidget {
//   SousDomaines({Key key, this.title}) : super(key: key);
//   final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<SousDomaines> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          // title: new Text(widget.title),
          ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

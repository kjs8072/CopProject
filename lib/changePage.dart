import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 1. push pop
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('go page2'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
            );
          },
        )
      )
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: TextButton(
          child: Text('go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      )
    );
  }
}*/

// 2. named route
/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cop App',
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/second': (context) => Page2(),
        '/third' : (Context) => Page3(),
      }
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: Center(
            child: RaisedButton(
              child: Text('go page2 for named'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            )
        )
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        body: Center(
            child: RaisedButton(
              child: Text('go page3 for named'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            )
        )
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 3'),
        ),
        body: Center(
            child: RaisedButton(
              child: Text('go back for named'),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/second'));
              },
            )
        )
    );
  }
}*/

// 3. 데이터 전달
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  String inputData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: Center(
            child: Column (
              children: [
                TextField(
                  decoration: InputDecoration (
                    labelText: '텍스트를 입력해주세요.',
                  ),
                  onChanged: (text) {
                    inputData = text;
                  },
                ),
                RaisedButton(
                  child: Text('go page2'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2(inputData)),
                    );
                  },
                )
              ],
            )
        )
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2(this.inputData);

  final String inputData;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
        ),
        body: Center(
            child: Column(
              children: [
                Text('data: ${widget.inputData}'),
                RaisedButton(
                  child: Text('go back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
        )
    );
  }
}
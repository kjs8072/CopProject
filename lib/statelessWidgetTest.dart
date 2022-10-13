import 'package:flutter/material.dart';

void main() => runApp(NewMyHomePage());

class NewMyHomePage extends StatelessWidget {
  int count = 0;
  void incrementCounter() {
    count ++;
    print('incrementCounter : $count');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cop StatelessWidget Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cop StatelessWidget Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have clicked the button this many times:'),
              Text('$count',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

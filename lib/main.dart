import 'package:flutter/material.dart';

void main() => runApp(WidgetTest());
class WidgetTest extends StatefulWidget {
  @override
  State<WidgetTest> createState() => _WidgetTestState();
}
class _WidgetTestState extends State<WidgetTest> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cop Test App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Test'),
        ),
        body: Center(
          child: AlertDialog(
            title: Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [Text('This is AlertDialog')],
              ),
            ),
            actions: [TextButton(onPressed: (){}, child: Text('OK'))],
          ),
        ),
      ),
    );
  }
}

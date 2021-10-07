import 'package:auto_hide_on_scroll/scroll_to_hide.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto hide toolbar on scroll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Auto hide toolbar on scroll'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => "Item $i");
  ScrollController scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            ScrollToHide(
                controller: scrollController,
                child: Container(
                  color:Colors.blueGrey,
                  child: Center(child: Text("Auto hide on scroll")),
                )),
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              controller: scrollController,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            )),
          ],
        ));
  }
}

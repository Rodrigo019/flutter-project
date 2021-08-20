import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_project/components/product_item.dart';
import 'package:flutter_project/models/product.dart';

main() => runApp(FlutterProject());

class FlutterProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.green,
        primaryColor: Colors.pink,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Product> products = [
    Product(
      Random().nextInt(1000),
      'Test 1',
      '',
      DateTime.now(),
      DateTime.now()
    ),
  ];
  int listTypeSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                    color: this.listTypeSelected == 1 ? Colors.green.shade700 : Colors.green,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          this.listTypeSelected = 1;
                        });
                      },
                      icon: Icon(Icons.list),
                      color: Colors.white,
                  ),
                )),
                Expanded(
                    child: Container(
                    color: this.listTypeSelected == 2 ? Colors.green.shade700 : Colors.green,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          listTypeSelected = 2;
                        });
                      },
                      icon: Icon(Icons.view_module_sharp),
                      color: Colors.white,
                  ),
                )),
              ],
            ),
            // GridView.count(
            //   crossAxisCount: 3,
            //   children: <Widget>[
            //     ...products.map((e) => ProductItem(e))
            //   ]
            // )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

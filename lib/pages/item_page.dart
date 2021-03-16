import 'package:belanja/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container();
    // throw UnimplementedError();

    // final Item itemArgs = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belanja"),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Container(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(child: Text(tempItem.merk)),
                Expanded(child: Text(tempItem.name)),
                Expanded(
                  child: Text(
                    tempItem.price.toString(),
                  ),
                ),
                Expanded(child: Text(tempItem.expDate)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

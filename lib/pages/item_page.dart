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
        body: Container(
          child: Text(
            tempItem.merk +
                " " +
                " " +
                tempItem.name +
                " " +
                tempItem.price.toString() +
                " " +
                tempItem.expDate,
          ),
        ),
      ),
    );
  }
}

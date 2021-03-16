import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        merk: "SemutMerah",
        name: 'Sugar',
        price: 5000,
        expDate: "2 november 2021"),
    Item(
        merk: "BatuPutih",
        name: 'Salt',
        price: 2000,
        expDate: "8 desember 2022"),
  ];

  @override
  Widget build(BuildContext context) {
    // return Container();
    // throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belanja"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/item', arguments: item);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemPage(
                        tempItem: item,
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.merk)),
                        Expanded(child: Text(item.name)),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            // textAlign: TextAlign.end,
                          ),
                        ),
                        Expanded(child: Text(item.expDate)),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

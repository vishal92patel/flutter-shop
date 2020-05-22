import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String itemName;
  final String itemImg;
  final String itemCost;
  Item({this.itemName, this.itemImg, this.itemCost});
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Container(child: Image.network(itemImg))),
                    Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  '${this.itemName}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 20),
                                )),
                                Container(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      'Rs. ${this.itemCost}/-',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.w500),
                                    )),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    RaisedButton.icon(
                                        label: Text('Add to cart'),
                                        onPressed: () => {},
                                        color: Colors.blue,
                                        textColor: Colors.white,
                                        icon: Icon(Icons.add_shopping_cart)),
                                    IconButton(
                                        onPressed: () => {},
                                        color: Colors.red,
                                        icon: Icon(Icons.favorite_border)),
                                  ],
                                ))
                              ]),
                        ))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

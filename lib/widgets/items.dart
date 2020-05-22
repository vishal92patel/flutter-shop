import 'package:flutter/material.dart';
import '../mock/items.dart' as itemsMock;
import '../widgets/item.dart' as itemWidget;

class Items extends StatelessWidget {
  final items = new itemsMock.Items();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (ctx, i) => Divider(
          thickness: 1,
        ),
        itemCount: items.getItems().length,
        itemBuilder: (ctx, i) => Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: itemWidget.Item(
                itemName: items.getItems()[i].name,
                itemImg: items.getItems()[i].img,
                itemCost: items.getItems()[i].cost)),
      ),
    );
  }
}

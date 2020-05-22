import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../mock/items.dart' as itemsMock;
import '../widgets/item.dart' as itemWidget;

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = Provider.of<itemsMock.Items>(context, listen: false);
//    return Consumer<itemsMock.Items>(
//        builder: (ctx, items, child) =>
    return Container(
      child: ListView.separated(
        separatorBuilder: (ctx, i) => Divider(
          thickness: 1,
        ),
        itemCount: items.getItems().length,
        itemBuilder: (ctx, i) => Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: itemWidget.Item(
                items.getItems()[i].id,
                items.getItems()[i].name,
                items.getItems()[i].img,
                items.getItems()[i].cost)),
      ),
    );
//    );
  }
}

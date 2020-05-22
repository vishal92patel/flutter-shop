import 'package:flutter/material.dart';

class HomeAppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: <Widget>[
            Container(
              child: IconButton(
                  onPressed: () => {}, icon: Icon(Icons.shopping_cart)),
            ),
            Positioned(
              left: 26,
              bottom: 26,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(1000)),
                padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                constraints: BoxConstraints(
                  minWidth: 15,
                  minHeight: 15,
                ),
                child: Text(
                  '0',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

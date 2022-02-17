import 'package:flutter/material.dart';

class tab_item extends StatelessWidget {
  tab_item(this.icon, this.active);
  final bool active;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white,
              width: 2,
            )),
          ),
          child: Icon(icon)),
    );
  }
}

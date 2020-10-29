import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {

  final String title;
  final Function onPressed;


  MenuButton({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 220.0
      ),
      child: FlatButton(
        color: Colors.blue,
        onPressed: onPressed,
        child: Text(title , style: TextStyle(
            fontSize: 18.0, color: Colors.white
        ),
        ),
      ),
    );
  }
}
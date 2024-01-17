import 'package:flutter/material.dart';

Future<bool?> toastError(BuildContext context,String message) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Failed'),
          content: Text(message),
          actions: <Widget>[
            InkWell(
              child: Text('Ok'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}

Future<bool?> toastSuccess(BuildContext context,String message) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Success"),
          content: Text(message),
          actions: <Widget>[
            InkWell(
              child: Text('Ok'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
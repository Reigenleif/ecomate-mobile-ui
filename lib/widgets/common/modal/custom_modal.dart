import 'package:flutter/material.dart';

class CustomModal {
  static void triggerBottomModal(BuildContext context, Widget child) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        builder: (context) {
          return Center(child: child);
        });
  }
}

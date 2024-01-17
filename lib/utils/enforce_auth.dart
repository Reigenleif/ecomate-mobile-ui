import 'package:ecomate/provider/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void enforceAuth(BuildContext context, void Function() thenFn) {
  final auth = Provider.of<Auth>(context, listen: false);
  auth.checkAuth(context).then((res) => {
    if (res) {
      thenFn()
    } 
  });
}
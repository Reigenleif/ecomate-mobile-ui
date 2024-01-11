import 'package:flutter/material.dart';

class CustomCard extends Container {
  CustomCard({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration ??
          BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
      padding: const EdgeInsets.all(12),
      child: child,
      
    );
  }
}

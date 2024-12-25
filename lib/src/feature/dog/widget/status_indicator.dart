
import 'package:flutter/material.dart';

class StatusIndicator extends StatelessWidget {
  final bool success;
  const StatusIndicator({super.key, required this.success});

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 20,
    height: 20,
    child: DecoratedBox(
       decoration: BoxDecoration(
         color: success ? Colors.green : Colors.red,
         border: Border.all(color: Colors.black, width: 2),
         borderRadius: BorderRadius.circular(64),
    ),
    ),
  );
}


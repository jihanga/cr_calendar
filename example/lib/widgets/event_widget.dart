import 'package:cr_calendar/cr_calendar.dart';
import 'package:flutter/material.dart';

/// Custom event widget with rounded borders
class EventWidget extends StatelessWidget {
  const EventWidget({
    required this.drawer,
    super.key,
  });

  final EventProperties drawer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      // padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        color: drawer.backgroundColor,
      ),
      child: Row(
        children: [
          if (drawer.isStart == true)
            Container(
              width: 8,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.greenAccent,
              ),
            ),
          if (drawer.isStart == true)
            Container(width: 2)
          else
            Container(width: 10),
          FittedBox(
            fit: BoxFit.fitHeight,
            alignment: Alignment.centerLeft,
            child: Text(
              drawer.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

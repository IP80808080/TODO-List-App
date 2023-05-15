import 'package:flutter/material.dart';

class TODOTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  TODOTile(
      {Key? key,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.12,
              child: Checkbox(
                value: taskComplete,
                onChanged: onChanged,
                activeColor: Colors.blueAccent[400],
                checkColor: Colors.white,
                shape: CircleBorder(),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              taskName,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PoltawskiNowy',
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: const Color(0xff333333),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              spreadRadius: 0.9,
              blurRadius: 0.3,
              offset: const Offset(1.7, 1.7),
            ),
          ],
        ),
      ),
    );
  }
}

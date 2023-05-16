import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TODOTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TODOTile(
      {Key? key,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged,
      required this.deleteFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 35),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete_outline,
              spacing: 10,
              backgroundColor: Colors.redAccent.shade200,
              borderRadius: BorderRadius.circular(15),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.12,
                child: Checkbox(
                  value: taskComplete,
                  onChanged: onChanged,
                  activeColor: Colors.blueAccent[200],
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
                    color: taskComplete ? Colors.grey : Colors.white,
                    fontFamily: 'PoltawskiNowy',
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    decoration: taskComplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
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
      ),
    );
  }
}

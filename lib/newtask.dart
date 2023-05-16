import 'package:flutter/material.dart';
import 'package:todo/forbutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF282828),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 5,
            ),
            TextField(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'PoltawskiNowy',
              ),
              controller: controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: "Enter your Task.",
                hintStyle: TextStyle(
                    color: Colors.green.shade200.withOpacity(0.7),
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 10,
                ),
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/forbutton.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

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
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your Task.",
                hintStyle: TextStyle(
                    color: Colors.green.shade200.withOpacity(0.7),
                    fontSize: 17),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(text: "Save", onPressed: () {}),
                SizedBox(
                  width: 10,
                ),
                MyButton(text: "Cancel", onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomeCheckWdget extends StatelessWidget {
  CustomeCheckWdget({
    Key? key,
    this.icon,
    required this.data,
    required this.color,
    this.onPressed,
  }) : super(key: key);
  final IconData? icon;
  final String data;
  void Function()? onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color)),
              onPressed: onPressed,
              icon: Icon(icon, color: Colors.white),
              label: Text(
                data,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

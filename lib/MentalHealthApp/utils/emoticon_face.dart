import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoteicon;
  final String iconText;
  const EmoticonFace({super.key, required this.emoteicon, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(16),
          child: Center(child: Text(emoteicon, style: TextStyle(fontSize: 28))),
        ),
        SizedBox(height: 10),
        Text(iconText, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

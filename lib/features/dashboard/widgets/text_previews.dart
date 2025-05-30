import 'package:flutter/material.dart';

class TextPreviews extends StatelessWidget {
  final String id, text;
  const TextPreviews({super.key, required this.id, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0XFF232A2E),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(-1, -1),
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 0,
          ),
          BoxShadow(
            blurRadius: 2,
            offset: Offset(1, 1),
            color: Color(0XFF484848).withValues(alpha: 0.3),
            spreadRadius: 0,
          ),
          BoxShadow(
            blurRadius: 8,
            offset: Offset(2, 2),
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0XFFC4C4C4)),
            ),
            child: Text(
              id.toUpperCase(),
              style: TextStyle(color: Color(0XFFC4C4C4)),
            ),
          ),
          SizedBox(width: 10),
          SizedBox(
            width: screenSize.width / 4,
            child: Text(
              text,
              maxLines: 2,
              style: TextStyle(color: Color(0XFFC4C4C4)),
            ),
          ),
        ],
      ),
    );
  }
}

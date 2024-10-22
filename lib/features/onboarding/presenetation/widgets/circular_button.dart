import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CircularButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(radius: 35.8,
       backgroundColor: Colors.blue,
        child: CircleAvatar(
          radius: 34, 
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 30, 
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.arrow_forward, 
              color: Colors.white, 
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}

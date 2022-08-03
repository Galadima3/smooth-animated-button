import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {
  final onTap;
  bool isButtonPressed;
  NeuButton({Key? key, this.onTap, required this.isButtonPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160.0,
        width: 160.0,
        
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300,
            ),
            
            
            boxShadow: isButtonPressed ? [
              // do nothing
            ] : [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(6, 6),
                  blurRadius: 15,
                  spreadRadius: 1),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-6, -6),
                  blurRadius: 15,
                  spreadRadius: 1)
            ]),
        child: Icon(
          Icons.favorite,
          size: 60,
          color: Colors.red[400],
        ),
      ),
    );
  }
}

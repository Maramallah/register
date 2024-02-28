import 'package:flutter/material.dart';

class Register extends StatelessWidget {
 // const Register({super.key});
   final VoidCallback onPressed;
   const Register({required this.onPressed});
 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Register'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 12, 13, 184),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 30,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(color: Color.fromARGB(255 , 22, 40, 203)),
        )
      ),
    );
  }
}
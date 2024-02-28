// lib/widgets/text_form_fields.dart
import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {
  final TextEditingController emailControl;
  final TextEditingController nameControl;
  final TextEditingController passwordControl;
  final TextEditingController confirmPasswordControl;

  const TextFormFields({
    required this.emailControl,
    required this.nameControl,
    required this.passwordControl,
    required this.confirmPasswordControl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: nameControl,
            decoration: const InputDecoration(
              labelText: 'Enter name',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              suffixIcon: Icon(Icons.person),
            ),
            onFieldSubmitted: (value) {
              print(value);
            },
          ),
        ),
        const SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: emailControl,
            decoration: const InputDecoration(
              labelText: 'Enter E-mail',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              suffixIcon: Icon(Icons.email),
            ),
            onFieldSubmitted: (value) {
              print(value);
            },
          ),
        ),
        const SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: passwordControl,
            decoration: const InputDecoration(
              labelText: 'Enter Password',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              //prefixIcon: Icon(Icons.key),
              suffixIcon: Icon(Icons.visibility_off)
            ),
            onFieldSubmitted: (value) {
              print(value);
            },
          ),
        ),
        const SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: confirmPasswordControl,
            decoration: const InputDecoration(
              labelText: 'Confirm Password',
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              //prefixIcon: Icon(Icons.key),
               suffixIcon: Icon(Icons.visibility_off)
            ),
            onFieldSubmitted: (value) {
              print(value);
            },
          ),
        ),
      ],
    );
  }
}

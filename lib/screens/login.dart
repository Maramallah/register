import 'package:flutter/material.dart';
import 'package:test1/const/colors.dart';
import 'package:test1/widgets/register.dart';
import 'package:test1/widgets/text_form_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControl = TextEditingController();
  var nameControl = TextEditingController();
  var passwordControl = TextEditingController();
  var confirmPasswordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: backGround,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          
          child: Container(
            height: 600,
            width: 350,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/pic.jpg'),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Creat Account',
                    style: TextStyle(
                      color: Color.fromRGBO(78, 77, 77, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                 const SizedBox(height: 8,),
                TextFormFields(
                  emailControl: emailControl,
                  nameControl: nameControl,
                  passwordControl: passwordControl,
                  confirmPasswordControl: confirmPasswordControl,
                ),
                const SizedBox(height: 30,),
               Align(
  alignment: Alignment.bottomCenter,
  child: ElevatedButton(
    onPressed: () {
      // Add your button press logic here
    },
    style: ElevatedButton.styleFrom(
    primary:   Colors.blue,
     padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 50,
                      ),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(color: Color.fromARGB(255, 73, 99, 114)),
                      ),
    ),
    
    child: const Text('Register Now',
    style: TextStyle(
     color: Colors.white,
     fontWeight: FontWeight.bold,
     fontSize: 14,
    ),
    ),
  ),
),
const SizedBox(height : 45),
 Align(
  alignment: Alignment.bottomCenter,
   child: RichText(
    text: const TextSpan(
      text: 'Already have an account ? ',
      style: TextStyle(
        color: Color.fromARGB(255, 85, 85, 85),
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: 'Login',
          style: TextStyle(
            color: Colors.blue, // Set the color you want for "Login"
            fontSize: 13,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline
          ),
        ),
      ],
    ),
   ),
)

              ],
            ),
          ),
          
          
        ),
      ),
    );
  }
}

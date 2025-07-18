import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textFields.dart';

class RegisterPage extends StatefulWidget {

  final void Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.lock_open_rounded,size: 100,color: Theme.of(context).colorScheme.inversePrimary,),
            SizedBox(
              height: 25,
            ),

            //message,app slogan
            Text("Let's create an account for you",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontSize: 16),),
            SizedBox(
              height: 25,
            ),

            //email textField
            MyTextField(controller: emailController, hintText: 'Email', obscureText: false),
            SizedBox(height: 10,),
            MyTextField(controller: passwordController, hintText: 'Password', obscureText: true),
            SizedBox(height: 10,),
            MyTextField(controller: confirmPasswordController, hintText: 'Confirm Password', obscureText: true),
            SizedBox(height: 10,),

            //sign up button
            MyButton(onTap: (){}, text: 'Sign Up'),
            SizedBox(height: 25,),

            //Already have an account? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                SizedBox(width: 4,),
                GestureDetector(
                    onTap: widget.onTap,
                    child: Text('Login Now',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

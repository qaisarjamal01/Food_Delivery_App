import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textFields.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {

  final void Function()? onTap;
  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async{
    //get instance of auth service
    final _authService = AuthService();

    //try sign in
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }
    
    //display any errors
    catch (e) {
      showDialog(context: context, builder: (context) => AlertDialog(title: Text(e.toString())));
    }
  }

  //forgot password

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
            Text('Food Delivery App',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontSize: 16),),
            SizedBox(
              height: 25,
            ),

            //email textField
            MyTextField(controller: emailController, hintText: 'Email', obscureText: false),
            SizedBox(height: 10,),
            MyTextField(controller: passwordController, hintText: 'Password', obscureText: true),
            SizedBox(height: 10,),

            //sign in button
            MyButton(onTap: login, text: 'Sign In'),
            SizedBox(height: 25,),

            //not a member,register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                SizedBox(width: 4,),
                GestureDetector(
                    onTap: widget.onTap,
                    child: Text('Register Now',style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
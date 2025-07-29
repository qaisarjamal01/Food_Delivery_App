import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textFields.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class ResetPassword extends StatelessWidget {
   ResetPassword({super.key});
   
  final emailController = TextEditingController();

  void resetPassword(BuildContext context) async {
    //get instance of authService
    final authService = AuthService();

    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email')),
      );
      return;
    }

    try {
      await authService.resetPassword(emailController.text)
          .then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Reset password email sent!')),
        );
        Navigator.pop(context);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyTextField(controller: emailController, hintText: 'enter you email', obscureText: false)
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyButton(onTap: () => resetPassword(context), text: 'Reset Password')
          ),
        ],
      ),
    );
  }
}
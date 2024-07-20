import 'package:interactive/auth/auth_service.dart';
import 'package:interactive/CommonWidgets//my_button.dart';
import 'package:interactive/CommonWidgets/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  //onTap function to toggle between login and register page
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();

  //register function
  void register(BuildContext context){
    //get auth service
    final authService = AuthService();
    //check if password and confirm password match=> create account
    if(_passwordController.text == _confirmPasswordController.text){
      try{
        authService.signUpWithEmailAndPassword(
            _emailController.text,
            _passwordController.text
        );
      }catch(e){
        showDialog(context: context, builder: (context)=> AlertDialog(
          title: Text(e.toString()),
        ));
      }
    }
    //if passwords do not match=> show dialog
    else{
      showDialog(context: context, builder: (context)=> const AlertDialog(
        title: Text('Passwords do not match'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.message,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 50),
                //welcome back message
                Text(
                  "Let's create an account for you!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),

                //email textfield
                MyTextField(
                  hintText: 'Email',
                  obscureText: false,
                  controller: _emailController,
                ),

                const SizedBox(height: 10),
                //password textfield
                MyTextField(
                  hintText: 'Password',
                  obscureText: true,
                  controller: _passwordController,
                ),
                const SizedBox(height: 10),
                //confirm password textfield
                MyTextField(
                  hintText: 'Confirm Password',
                  obscureText: true,
                  controller: _confirmPasswordController,
                ),

                const SizedBox(height: 25),

                //login button
                MyButton(
                  text: 'Register',
                  onTap: () => register(context),
                ),
                const SizedBox(height: 25),
                //register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text('Login now',
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}
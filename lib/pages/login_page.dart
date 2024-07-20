import 'package:interactive/auth/auth_service.dart';
import 'package:interactive/CommonWidgets/my_button.dart';
import 'package:interactive/CommonWidgets/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  //onTap function to toggle between login and register page
  final void Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //email and password controllers
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  //login function
  void login(BuildContext context){
    //auth service
    final authService = AuthService();

    //try login
    try{
      authService.signInWithEmailAndPassword(_emailController.text, _passwordController.text);
    }

    //catch error
    catch(e){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
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
                    'Welcome back, you\'ve been missed!',
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

                  const SizedBox(height: 25),

                  //login button
                  MyButton(
                    text: 'Login',
                    onTap: () => login(context),
                  ),
                  const SizedBox(height: 25),
                  //register now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member yet? ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text('Register now',
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
        );
    }
}

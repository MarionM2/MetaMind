import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './textfield.dart';

class Signup extends StatelessWidget {
  final Function()? onTap;
  Signup({Key? key, this.onTap}) : super(key: key);

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,

          // The title text which will be shown on the action bar
          title: Text('MIND MATE'),
        ),
        backgroundColor: const Color.fromARGB(0xff, 0xF8, 0xF8, 0xFA),
        body: SafeArea(
            child: Center(
          child: Column(children: [
            const SizedBox(height: 50),
            Image.asset('assets/images/Logo1.png', height: 80),
            const SizedBox(height: 10),
            Text('Welcome to Mind Mate! Register',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

            //USERNAME
            const SizedBox(height: 15),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Enter your username'),
                ])),

            const SizedBox(width: 5.0),
            MyTextfield(
              controller: usernameController,
              hintText: 'username',
              obscureText: false,
            ),

            //EMAIL
            const SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Enter your email'),
                ])),

            const SizedBox(width: 5.0),
            MyTextfield(
              controller: usernameController,
              hintText: 'email',
              obscureText: false,
            ),

            //PASSWORD
            const SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Enter your password'),
                ])),

            const SizedBox(
              width: 5.0,
            ),

            MyTextfield(
              controller: usernameController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 20),
            GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 110.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ))),

            const SizedBox(height: 25),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Already Registered? Login instead',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    )
                  ],
                )),
            const SizedBox(height: 15),
            GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 110.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ))),

            // Row(children:[
            //   Image.asset(
            //       'assets/images/.png',
            //       height:50

            //       ),
            // ])
          ]),
        )));
  }
}

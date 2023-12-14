import 'package:eco_hub/screen/home_screen.dart';
import 'package:eco_hub/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Log-in',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: const Color.fromARGB(40, 255, 255, 255),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Enter Your Details',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: Colors.white, fontSize: 25),
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // Image.asset(
                      //   'assets/images/astronautpng1.png',
                      //   height: 100,
                      // ),
                      const SizedBox(height: 20),
                      TextFormField(
                        // controller: emailC,
                        decoration: InputDecoration(
                          hintText: 'email',
                          hintStyle: TextStyle(
                            color: Colors.white.withAlpha(100),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        // controller: passwordC,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          hintStyle: TextStyle(
                            color: Colors.white.withAlpha(100),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      NeoPopTiltedButton(
                        color: const Color.fromRGBO(255, 235, 52, 1),
                        onTapUp: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50.0,
                            vertical: 12,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Text('Don\'t have an account? Register'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}

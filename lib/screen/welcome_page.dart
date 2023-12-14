import 'package:eco_hub/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:neopop/neopop.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trash Hub',
        ),
        //   style: Theme.of(context).textTheme.displayLarge,
        // ).addTopMargin(30),
        // backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          SizedBox(
              height: 330, child: Image.asset('assets/images/welcomepng.png')),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to EcoHub',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const Spacer(),
          NeoPopTiltedButton(
            isFloating: true,
            onTapUp: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            decoration: const NeoPopTiltedButtonDecoration(
              color: Color.fromRGBO(255, 235, 52, 1),
              plunkColor: Color.fromRGBO(255, 235, 52, 1),
              shadowColor: Color.fromRGBO(36, 36, 36, 1),
              showShimmer: true,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 70.0,
                vertical: 15,
              ),
              child: Text(
                'Login to RedFrontier',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer()
        ]),
      ),
    );
  }
}

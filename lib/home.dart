import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trashtrace/backend/backend.dart';
import 'package:trashtrace/recyclex/recyclex.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:trashtrace/trashtag/trashtaghome.dart';
import 'package:trashtrace/trashtrace.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  var url = Uri.parse('https://github.com/synapsecode/TrashHub-MiniProject');
  var murl = Uri.parse('https://www.instagram.com/somu_7704/');

  final Map<int, String> appBarTitles = {
    0: 'TrashHub Home',
    1: 'EcoPerks',
    2: 'ReCycleHub Home',
  };

  final Map<int, Widget> pageLogos = {
    0: Image.asset('assets/TrashHubIcon1.png'),
    1: Image.asset('assets/EcoPerksLogo.png'),
    2: Image.asset('assets/RecycleHubIcon.png'),
  };

  final hcarouselImages = [
    Image.asset('assets/1.png'),
    Image.asset('assets/2.png'),
    Image.asset('assets/3.png'),
  ];

  String appBar = 'TrashHub';
  Widget appBarLogo = Image.asset('assets/TrashHubIcon1.png');

  getContent() {
    if (pageIndex == 0) {
      return Scaffold(
        appBar: AppBar(
          title: Text(appBar),
          backgroundColor: const Color.fromARGB(255, 2, 67, 4),
          foregroundColor: Colors.white,
        ),
        body: Container(
          width: double.infinity,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/TrashHubBg.png'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'Welcome to TrashHub',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.brown),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Making Waste Management Better\nFor Better Tomorrow',
                style: GoogleFonts.lato(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 177, 166, 166)),
                textAlign: TextAlign.center,
              ),

              TextButton.icon(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.remove('loggedin_username');
                  print('Logged Out!');
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                      return const TrashHub();
                    }),
                    (route) => false,
                  );
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                label: const Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              // ElevatedButton.icon(
              //   onPressed: () async {
              //     final prefs = await SharedPreferences.getInstance();
              //     await prefs.remove('loggedin_username');
              //     print('Logged Out!');
              //     Navigator.of(context).pushAndRemoveUntil(
              //       MaterialPageRoute(builder: (context) {
              //         return TrashHub();
              //       }),
              //       (route) => false,
              //     );
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.red,
              //   ),
              //   icon: const Icon(Icons.person),
              //   label: const Text('Logout'),
              // ),
            ],
          ),
        ),
      );
    } else if (pageIndex == 1) {
      return const EcoPerksFragment();
    } else if (pageIndex == 2) {
      return const RecycleHub();
    }
    return const SizedBox();
  }

  getFAB() {
    // if (pageIndex == 1) {
    //   return FloatingActionButton(
    //     onPressed: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => const ScanPage()),
    //       );
    //     },
    //     child: const Icon(Icons.qr_code),
    //   );
    // }
    return null;
  }

  TextEditingController serverLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getContent(),
      bottomNavigationBar: GNav(
        selectedIndex: pageIndex,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Color.fromARGB(144, 2, 91, 19),
        onTabChange: (i) {
          pageIndex = i;
          setState(() {
            pageIndex = i;
            appBar = appBarTitles[i]!;
            appBarLogo = pageLogos[i]!;
          });
        },
        gap: 7,
        padding: const EdgeInsets.all(16),
        tabMargin: const EdgeInsets.all(5),
        tabs: const [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.qr_code_scanner, text: 'EcoPerks'),
          GButton(icon: Icons.recycling, text: 'RecycleHub'),
        ],
      ),
      floatingActionButton: getFAB(),
    );
  }
}

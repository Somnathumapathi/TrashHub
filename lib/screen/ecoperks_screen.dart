import 'package:flutter/material.dart';
import 'package:qr_scanner/qr_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class EcoperksScreen extends StatefulWidget {
  const EcoperksScreen({super.key});

  @override
  State<EcoperksScreen> createState() => _EcoperksScreenState();
}

class _EcoperksScreenState extends State<EcoperksScreen> {
  String? productKey;
  String? garbageKey;
  int? userID;
  double? userPoints;
  String mode = 'Product';

  @override
  void initState() {
    initialize();
    super.initState();
  }

  initialize() async {
    //Set the UserID
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('loggedin_username') ?? '';
    final uid = await TrashTraceBackend().getUserID(username: username);
    if (uid.result == null) {
      Toast.show('Could not find UserID');
      return;
    }
    setState(() {
      userID = uid.result!;
    });
    //Get the Initial amount of Points
    await getUserPoints();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code),
      ),
    );
  }
}

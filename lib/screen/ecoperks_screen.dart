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
  // String? productKey;
  // String? garbageKey;
  // int? userID;
  // double? userPoints;
  // String mode = 'Product';

  // @override
  // void initState() {
  //   initialize();
  //   super.initState();
  // }

  // initialize() async {
  //   //Set the UserID
  //   final prefs = await SharedPreferences.getInstance();
  //   final username = prefs.getString('loggedin_username') ?? '';
  //   Future<String?> scanQR() async {
  //   ToastContext().init(context);
  //   final s = await Utils.requestCameraPermission();
  //   if (!s) {
  //     Toast.show('Camera Permission not given');
  //     return null;
  //   }
  //   final res = await scanner.scan();
  //   return res;
  // }

  // onScanButtonPressed() async {
  //   if (mode == 'Product') {
  //     //Scan the product
  //     final pKey = await scanQR();
  //     if (pKey == null) return;
  //     print("ProductKey: $pKey");
  //     setState(() {
  //       productKey = pKey;
  //       mode = 'Dustbin';
  //     });
  //   } else if (mode == 'Dustbin') {
  //     final gKey = await scanQR();
  //     if (gKey == null) return;
  //     print("GarbageKey: $gKey");
  //     setState(() {
  //       garbageKey = gKey;
  //       mode = 'loading';
  //     });
  //     // await add2dustbin();
  //     await initialize();
  //     setState(() {
  //       mode = 'Product';
  //     });
  //   }
  // }
  // final uid = await TrashTraceBackend().getUserID(username: username);
  //   if (uid.result == null) {
  //     Toast.show('Could not find UserID');
  //     return;
  //   }
  //   setState(() {
  //     // userID = uid.result!;
  //   });
  //   //Get the Initial amount of Points
  //   // await getUserPoints();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Perks Earned: 20')]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code),
      ),
    );
  }
}

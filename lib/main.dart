import 'package:finandy/screens/otp_verify.dart';
import 'package:finandy/screens/professional_info.dart';
import 'package:finandy/screens/request_permissions.dart';
import 'package:finandy/screens/root_page.dart';
import 'package:finandy/screens/transaction-successful-qr_scan-screen3.dart';
import 'package:finandy/temp/app_list.dart';
import 'package:finandy/temp/contacts_view.dart';
import 'package:finandy/temp/home_page.dart';
import 'package:finandy/temp/location_view.dart';
import 'package:finandy/temp/phone_details.dart';
// import 'package:finandy/screens/qr_scan.dart';
import 'package:finandy/screens/personal-info.dart';
import 'package:finandy/temp/sms_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'EcoHop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: const MyHomePage(),
      initialRoute: MyHomePage.id,
      routes: {
        '/apps': (context) => const AppsListScreen(),
        // '/qrscan': (context) => const FullScreenScannerPage(),
        '/': (context) => const MyHomePage(),
        '/location': (context) => const LocationDetails(),
        '/contacts': (context) => const ContactsView(),
        '/sms': (context) => SmsInbox(),
        '/device' : (context) => const DeviceDetails(),
        '/personalInfo': (context) => const PersonalInfo(),
        '/pay': (context) => const PayScreen(),
        '/otp': (context) => const OTPverify(),
        '/reqPerm': (context) => const RequestPermissions(),
        '/proinfo': (context) => const ProfessionalDetails(),
        '/root': (context) => const RootPage()
      },
    );
  }
}

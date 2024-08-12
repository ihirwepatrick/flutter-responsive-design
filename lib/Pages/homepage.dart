import"package:flutter/material.dart";
import '../responsive/mobilebody.dart';
import '../responsive/desktopbody.dart';
import '../responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: currentWidth < 600 ? Colors.deepPurple[300]: Colors.green[300],
      body: ResponsiveLayout(mobileBody: MyMobileBody(), desktopBody: MyDesktopBody())
    );
  }
}

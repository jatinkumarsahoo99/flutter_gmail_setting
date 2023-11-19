
import 'package:flutter/material.dart';
import 'package:gmailsetting/theme.dart';
import 'package:gmailsetting/widget/CollapsingNavigationDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   getAppBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(70.0),
      child: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,size: 40,color: Colors.black.withOpacity(0.5)),
            Image.asset("assets/gmailLogo.png",scale: 50),
            Text("Collapsing Navigation Drawer/Sidebar",),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
        //drawer: CollapsingNavigationDrawer(),
        body: Stack(
          children: <Widget>[
            Container(color: selectedColor,),
            CollapsingNavigationDrawer()
          ],
        )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginWithEmail.dart';
import 'LoginWithMobile.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  initState() {
    super.initState();

    _tabs = [
      new Tab(text: 'Mobile'),
      new Tab(text: 'Email'),
    ];

    _pages = [
      new LoginWithMobile(),
      new LoginWithEmail(),
    ];

    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         home: DefaultTabController(
             length: 2,
             child: new Scaffold(
               appBar: AppBar(
          bottom:TabBar(
            controller: _controller,
            tabs: _tabs,
            indicatorColor: Colors.white,
          ),
          title: Text("Home"),
          ),
        body: new TabBarView(
          controller: _controller,
          children: _pages,
        ),
      )
      ),
    );
  }
}
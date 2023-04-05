import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:spotify_clone/constants/common_size.dart';
import 'package:spotify_clone/screens/home/item_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _bottomSelectedIndex = 0;
  String currentLocation = "ara";
  final Map<String, String> locationTypeToString = {
    "ara": "아라동",
    "ora": "오라동",
    "donam": "도남동"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            print('clicked');
          },
          child: PopupMenuButton(
            offset: Offset(0, 25),
            shape: ShapeBorder.lerp(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)), 1),
            onSelected: (value) {
              setState(() {
                currentLocation = value;
              });
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 'ara', child: Text('아라동')),
                PopupMenuItem(value: 'donam', child: Text('도남동')),
                PopupMenuItem(value: 'ora', child: Text('오라동')),
              ];
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text(locationTypeToString[currentLocation]!), Icon(Icons.arrow_drop_down)],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('search clicked');
              },
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/svg/bell.svg",
                width: 22,
              )),
        ],
      ),
      body: IndexedStack(
        index: _bottomSelectedIndex,
        children: [
          ItemPage(),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.grey),
          Container(color: Colors.blue),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _bottomSelectedIndex = index;
          });
        },
        currentIndex: _bottomSelectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/home_off.svg", width: 22),
              activeIcon: SvgPicture.asset("assets/svg/home_on.svg", width: 22),
              label: "home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/notes_off.svg", width: 22),
              activeIcon: SvgPicture.asset("assets/svg/notes_on.svg", width: 22),
              label: "동네생활"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/location_off.svg", width: 22),
              activeIcon: SvgPicture.asset("assets/svg/location_on.svg", width: 22),
              label: "내근처"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/chat_off.svg", width: 22),
              activeIcon: SvgPicture.asset("assets/svg/chat_on.svg", width: 22),
              label: "채팅"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/user_off.svg", width: 22),
              activeIcon: SvgPicture.asset("assets/svg/user_on.svg", width: 22),
              label: "나의당근"),
        ],
      ),
    );
  }
}

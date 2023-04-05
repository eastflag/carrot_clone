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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            print('clicked');
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [Text('아라동'), Icon(Icons.arrow_drop_down)],
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

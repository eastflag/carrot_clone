import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> datas = [];

  Widget _bodyWidget() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Image.asset(datas[index]["image"]!, width: 100),
              Column(
                children: [
                  Text('title $index'),
                  Text('desc')
                ],
              )
            ],
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return Container(height: 1, color: Colors.grey,);
    }, itemCount: 10);
  }

  @override
  void initState() {
    super.initState();
    datas = [
      {
        "image": "assets/images/ara-1.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-2.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-3.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-4.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-5.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-6.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-7.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-8.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-9.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
      {
        "image": "assets/images/ara-10.jpg",
        "title": "네메시스 축구화275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
    ];
  }

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
      body: _bodyWidget(),
    );
  }
}

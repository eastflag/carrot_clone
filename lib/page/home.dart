import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:spotify_clone/constants/common_size.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> datas = [];

  final oCcy = NumberFormat("#,###", "ko_KR");
  String calcStringToWon(String priceString) {
    return "${oCcy.format(int.parse(priceString))}원";
  }

  Widget _bodyWidget() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)), child: Image.asset(datas[index]["image"]!, width: 100, height: 100)),
              SizedBox(
                width: COMMON_SM_PADDING,
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        datas[index]["title"]!,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(datas[index]["location"]!, style: TextStyle(color: Colors.black.withOpacity(0.5))),
                      Text(calcStringToWon(datas[index]["price"]!), style: TextStyle(fontWeight: FontWeight.w600)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset("assets/svg/heart_off.svg", width: 14),
                          SizedBox(width: 5),
                          Text(datas[index]["likes"]!),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: COMMON_SM_PADDING * 1.5,
            thickness: 1,
            color: Colors.grey,
            indent: COMMON_SM_PADDING,
            endIndent: COMMON_SM_PADDING,
          );
        },
        padding: EdgeInsets.all(COMMON_SM_PADDING),
        itemCount: 10);
  }

  @override
  void initState() {
    super.initState();
    datas = [
      {"image": "assets/images/ara-1.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-2.jpg", "title": "네메시스 축구화 275 네메시스 축구화 275 네메시스 축구화 275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-3.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-4.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-5.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-6.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-7.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-8.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-9.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {"image": "assets/images/ara-10.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
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

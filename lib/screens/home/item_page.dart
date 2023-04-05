import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../constants/common_size.dart';

class ItemPage extends StatefulWidget {
  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  List<Map<String, String>> datas = [];

  final oCcy = NumberFormat("#,###", "ko_KR");

  String calcStringToWon(String priceString) {
    return "${oCcy.format(int.parse(priceString))}원";
  }

  @override
  void initState() {
    super.initState();
    datas = [
      {"image": "assets/images/ara-1.jpg", "title": "네메시스 축구화275", "location": "제주 제주시 아라동", "price": "30000", "likes": "2"},
      {
        "image": "assets/images/ara-2.jpg",
        "title": "네메시스 축구화 275 네메시스 축구화 275 네메시스 축구화 275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2"
      },
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

  // @override
  @override
  Widget build(BuildContext context) {
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
}

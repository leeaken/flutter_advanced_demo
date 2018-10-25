import 'package:flutter/material.dart';
import 'package:flutter_advanced/home/bean/home_banner_data.dart';
import 'package:flutter_advanced/home/page/webview_page.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/// 首页banner
class HomeBannerCard extends StatefulWidget {

  final List<HomeBannerData> bannerDatas;

  HomeBannerCard({this.bannerDatas});

  @override
  _HomeBannerCardState createState() {

    _HomeBannerCardState view = new _HomeBannerCardState();
    return view;
  }
}

class _HomeBannerCardState extends State<HomeBannerCard> {

    // banner start
   Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
        widget.bannerDatas[index].imgUrl,
        fit: BoxFit.cover)
    );
  }
  Widget _buildBannerCard() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: Swiper(
        itemBuilder: _swiperBuilder,
        itemCount: widget.bannerDatas.length,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
          color: Colors.black54,
          activeColor: Colors.white,
        )),
        control: new SwiperControl(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index){
          
          HomeBannerData model = widget.bannerDatas[index];
          print(model.linkUrl);
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => 
             WebViewPage(title: model.name,url: model.linkUrl))
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBannerCard();
  }
}
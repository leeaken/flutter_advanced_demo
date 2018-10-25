
import 'package:flutter_advanced/home/bean/home_banner_data.dart';
import 'package:flutter_advanced/home/model/home_banner_model.dart';

/// 获取model数据抽象类
class HomeBannerModelRepositoryImpl implements  HomeBannerModelRepository{
  @override
  Future<List<HomeBannerData>> fetch() {
    // TODO: implement fetch
    return Future.value(kHomeBanners);
  }
} 

const kHomeBanners = const<HomeBannerData>[
  const HomeBannerData(name: "金刚狼3",imgUrl:"https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=e771a7cdc38065387feaa413a7dca115/f2deb48f8c5494ee847d2d9a24f5e0fe98257ed1.jpg",linkUrl:"https://baike.baidu.com/item/%E9%87%91%E5%88%9A%E7%8B%BC3%EF%BC%9A%E6%AE%8A%E6%AD%BB%E4%B8%80%E6%88%98/20126654?fr=aladdin"),
  const HomeBannerData(name: "复仇者联盟3:无限战争",imgUrl:"https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=c2dad3789c529822013339c3e7cb7b3b/cb8065380cd7912313247bcba1345982b3b7804d.jpg",linkUrl:"https://baike.baidu.com/item/%E5%A4%8D%E4%BB%87%E8%80%85%E8%81%94%E7%9B%9F3%EF%BC%9A%E6%97%A0%E9%99%90%E6%88%98%E4%BA%89/15971907?fr=aladdin"),
  const HomeBannerData(name: "黑豹",imgUrl:"https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=586fdf94084f78f0840b9af349300a83/6f061d950a7b0208d8767e2169d9f2d3562cc8b7.jpg",linkUrl:"https://baike.baidu.com/item/%E9%BB%91%E8%B1%B9/15466851?fr=aladdin"),
  const HomeBannerData(name: "银河护卫队2",imgUrl:"https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D500/sign=456f94f81fce36d3a60483300af23a24/2e2eb9389b504fc2cbb8d827efdde71190ef6d28.jpg",linkUrl:"https://baike.baidu.com/item/%E9%93%B6%E6%B2%B3%E6%8A%A4%E5%8D%AB%E9%98%9F2/15079836?fr=aladdin"),
  const HomeBannerData(name: "正义联盟",imgUrl:"https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/h%3D250/sign=da8946e7898ba61ec0eecf2a713597cc/43a7d933c895d143c6f7a40e78f082025aaf071d.jpg",linkUrl:"https://baike.baidu.com/item/%E6%AD%A3%E4%B9%89%E8%81%94%E7%9B%9F/5476792?fr=aladdin"),
];
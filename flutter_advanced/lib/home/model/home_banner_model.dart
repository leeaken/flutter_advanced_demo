import 'package:flutter_advanced/home/bean/home_banner_data.dart';

/// 获取model数据抽象类
abstract class HomeBannerModelRepository {
 Future< List<HomeBannerData> > fetch();
} 
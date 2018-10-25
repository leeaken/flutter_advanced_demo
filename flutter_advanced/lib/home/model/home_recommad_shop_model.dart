
import 'package:flutter_advanced/home/bean/home_recommad_shop_data.dart';

abstract class HomeRecommadProductModelRespository {
  Future< List<HomeProductData> > fetch();
}
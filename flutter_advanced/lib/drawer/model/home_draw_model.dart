
import 'package:flutter_advanced/drawer/bean/home_draw_data.dart';

abstract class HomeDrawModelRepository {
  Future<List<HomeDrawData>> fetch();
}
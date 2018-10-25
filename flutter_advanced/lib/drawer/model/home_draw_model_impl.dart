import 'package:flutter/material.dart';
import 'package:flutter_advanced/drawer/bean/home_draw_data.dart';
import 'package:flutter_advanced/drawer/model/home_draw_model.dart';

/// 数据层负责返回model数据
class HomeDrawModelRepositoryImpl implements HomeDrawModelRepository {
  @override
  Future<List<HomeDrawData>> fetch() {
    // TODO: implement fetch
    return new Future.value(kHomeDrawerDatas);
  }

}

const kHomeDrawerDatas = const<HomeDrawData>[
    const HomeDrawData(name: "控件",icon:Icon(Icons.equalizer,color:Colors.blue)),
    const HomeDrawData(name: "布局",icon:Icon(Icons.layers,color: Colors.orange))
  ];
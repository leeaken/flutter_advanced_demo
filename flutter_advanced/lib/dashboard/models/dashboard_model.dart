import 'package:flutter/material.dart';
import 'package:flutter_advanced/dashboard/beans/dashboard_data.dart';

abstract class DashboardModelRepository {
 Future< List<DashboardData> > fetch();
}  

class DashboardModelRepositoryImpl implements DashboardModelRepository {
  @override
  Future<List<DashboardData>> fetch() {
    // TODO: implement fetch
    return Future.value(kDashboardDatas);
  }

}

const kDashboardDatas = const <DashboardData>[
    DashboardData(title:"Active",count:"30012",subTitle:"SUBSCRIPTIONS",color: Colors.green),
    DashboardData(title:"Trailling",count:"800",subTitle:"SUBSCRIPTIONS",color: Color.fromRGBO(51, 51, 51, 1.0)),
    DashboardData(title:"New",count:"1002",subTitle:"SUBSCRIPTIONS",color: Color.fromRGBO(51, 51, 51, 1.0)),
    DashboardData(title:"Past Due",count:"88",subTitle:"SUBSCRIPTIONS",color: Colors.red)
];
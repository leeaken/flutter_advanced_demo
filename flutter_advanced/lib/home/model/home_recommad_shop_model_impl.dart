import 'package:flutter_advanced/home/bean/home_recommad_shop_data.dart';
import 'package:flutter_advanced/home/model/home_recommad_shop_model.dart';

class HomeRecommadProductModelRespositoryImpl implements HomeRecommadProductModelRespository {
  @override
  Future<List<HomeProductData>> fetch() {
    // TODO: implement fetch
    return Future.value(kHomeRecommadProducts);
  }

}

const kHomeRecommadProducts = const<HomeProductData>[
  const HomeProductData(name:"杉杉（FIRS）毛呢大衣",image:"https://img14.360buyimg.com/n2/jfs/t27127/75/904473397/217046/4fb0a5ed/5bbc0738Nebad5fcb.jpg",rating:10.0,price:"498",description:"杉杉（FIRS）毛呢大衣 2018年冬季商务简约中长款保暖羊毛大衣外套 TD8809210-1黑色 XL(180/96A)"),
  const HomeProductData(name:"夏季女装新品",image:"http://img11.360buyimg.com/n2/jfs/t5212/51/1772684144/68611/659e705c/5913c79fN88c8509f.jpg",rating:20.0,price:"308",description:"季候风夏季女装新品不对称肩袖连衣阔腿裤女4271KF915 花灰MY2 S/155"),
  const HomeProductData(name:"蕾丝镂空长袖衬衣",image:"https://img12.360buyimg.com/n2/jfs/t1/3240/14/762/98424/5b924e2aEc3575dbd/d460824c1c6620aa.jpg",rating:30.0,price:"358",description:"季候风2018冬季新品简约甜美拼接蕾丝镂空宽松纯色长袖衬衣女"),
  const HomeProductData(name:"明线纯色半裙女",image:"https://img10.360buyimg.com/n2/jfs/t1/2811/16/711/60136/5b923c93Ec5fa6f66/196ad4982ad4e2a8.jpg",rating:33.0,price:"268",description:"季候风2018冬季新品休闲简约半身裙百搭通勤明线纯色半裙女6804QH827 深黑BK3 S/155"),
  const HomeProductData(name:"哈森羊反绒高跟鞋",image:"https://img11.360buyimg.com/cms/jfs/t22879/240/545423616/101986/9520a7f8/5b35a6acN49bf8b7b.jpg",rating:50.0,price:"599",description:"哈森 2018秋季新品羊反绒高跟潮流时尚女鞋 尖头浅口高跟细跟单鞋"),
  const HomeProductData(name:"优哈单肩包",image:"https://img30.360buyimg.com/popWaterMark/jfs/t23179/190/2293105347/177306/3dca996b/5b7a80a1Na20ab5e0.jpg",rating:66.0,price:"89",description:"优哈（HOW.R.U）单肩包女2018新款潮时尚链条小方包韩版百搭简约女包 粉色01002")
];